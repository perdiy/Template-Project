import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:operation/core/core.dart';
import 'package:operation/utils/utils.dart';

class DioInterceptor extends Interceptor
    with FirebaseCrashLogger, MainBoxMixin {
  bool _isRefreshing = false;
  Completer<void>? _refreshCompleter;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // header
    try {
      final auth = getData(MainBoxKeys.accessToken) as String?;
      final deviceId = getData(MainBoxKeys.deviceType) as String?;
      final notifId = getData(MainBoxKeys.notificationId) as String?;
      final tokenLinkId = getData(MainBoxKeys.tokenLinkId) as String?;

      options.headers.addAll({
        if (auth != null) 'Authorization': 'Bearer $auth',
        if (tokenLinkId != null) '1452': tokenLinkId,
        'device-id': deviceId ?? 'unknown',
        'notif-id': notifId ?? '',
        'timezone': 'Asia/Jakarta',
      });
    } catch (_) {}

    // Logging request
    try {
      if (!kReleaseMode) {
        final headers = Map<String, dynamic>.from(options.headers);
        if (headers.containsKey('Authorization')) {
          headers['Authorization'] = '***';
        }
        if (headers.containsKey('1452')) headers['1452'] = '***';
        const encoder = JsonEncoder.withIndent('  ');
        final prettyJson = options.data is FormData
            ? 'FormData(...)'
            : encoder.convert(options.data);
        log.d(
          "REQUEST ${options.method} ${options.baseUrl}${options.path}\n"
          "Headers: $headers\n"
          "Query: ${options.queryParameters}\n"
          "Body: $prettyJson",
        );
      }
    } catch (e, stackTrace) {
      log.e("Failed to log request: $e");
      nonFatalError(error: e, stackTrace: stackTrace);
    }

    handler.next(options);
  }

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    _logResponse(response);
    return handler.next(response);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    log.e(
      "<-- ${err.message} ${err.response?.requestOptions != null ? (err.response!.requestOptions.baseUrl + err.response!.requestOptions.path) : 'URL'}\n"
      "${err.response != null ? err.response!.data : 'Unknown Error'}",
    );

    final status = err.response?.statusCode;

    // handle error 401 → refresh token + retry
    if (status == 401) {
      if (!_isRefreshing) {
        // Proses refresh
        _isRefreshing = true;
        _refreshCompleter = Completer<void>();

        final ok = await _performTokenRefresh();
        _isRefreshing = false;
        _refreshCompleter?.complete();
        _refreshCompleter = null;

        if (ok) {
          // Retry request with new token
          final req = err.requestOptions;
          try {
            final at = getData(MainBoxKeys.accessToken) as String?;
            final tokenLinkId = getData(MainBoxKeys.tokenLinkId) as String?;
            final deviceId = getData(MainBoxKeys.deviceType) as String?;
            final notifId = getData(MainBoxKeys.notificationId) as String?;

            final newHeaders = Map<String, dynamic>.from(req.headers);
            if (at != null) newHeaders['Authorization'] = 'Bearer $at';
            if (tokenLinkId != null) newHeaders['1452'] = tokenLinkId;
            newHeaders['device-id'] = deviceId ?? 'unknown';
            newHeaders['notif-id'] = notifId ?? '';
            newHeaders['timezone'] = 'Asia/Jakarta';
            newHeaders['x-api-key'] = const String.fromEnvironment('API_KEY');
            newHeaders['Accept'] = 'application/json';
            newHeaders['Content-Type'] =
                req.headers['Content-Type'] ?? 'application/json';

            final dioForRetry = Dio(
              BaseOptions(
                baseUrl: req.baseUrl,
                headers: newHeaders,
                receiveTimeout: const Duration(minutes: 1),
                connectTimeout: const Duration(seconds: 15),
                validateStatus: (s) => s != null && s >= 200 && s < 300,
              ),
            );

            final response = await dioForRetry.request(
              req.path,
              data: req.data,
              queryParameters: req.queryParameters,
              options: Options(method: req.method, headers: newHeaders),
            );
            return handler.resolve(response);
          } catch (e, st) {
            log.e("Error retrying request after refresh: $e");
            nonFatalError(error: e, stackTrace: st);
          }
        } else {
          // Refresh gagal -> logout
          await logoutBox();
        }
      } else if (_refreshCompleter != null) {
        // Proses refresh -> tunggu selesai lalu retry
        await _refreshCompleter!.future;

        final req = err.requestOptions;
        try {
          final at = getData(MainBoxKeys.accessToken) as String?;
          final tokenLinkId = getData(MainBoxKeys.tokenLinkId) as String?;
          final deviceId = getData(MainBoxKeys.deviceType) as String?;
          final notifId = getData(MainBoxKeys.notificationId) as String?;

          final newHeaders = Map<String, dynamic>.from(req.headers);
          if (at != null) newHeaders['Authorization'] = 'Bearer $at';
          if (tokenLinkId != null) newHeaders['1452'] = tokenLinkId;
          newHeaders['device-id'] = deviceId ?? 'unknown';
          newHeaders['notif-id'] = notifId ?? '';
          newHeaders['timezone'] = 'Asia/Jakarta';
          newHeaders['x-api-key'] = const String.fromEnvironment('API_KEY');
          newHeaders['Accept'] = 'application/json';
          newHeaders['Content-Type'] =
              req.headers['Content-Type'] ?? 'application/json';

          final dioForRetry = Dio(
            BaseOptions(
              baseUrl: req.baseUrl,
              headers: newHeaders,
              receiveTimeout: const Duration(minutes: 1),
              connectTimeout: const Duration(seconds: 15),
              validateStatus: (s) => s != null && s >= 200 && s < 300,
            ),
          );

          final response = await dioForRetry.request(
            req.path,
            data: req.data,
            queryParameters: req.queryParameters,
            options: Options(method: req.method, headers: newHeaders),
          );
          return handler.resolve(response);
        } catch (e, st) {
          log.e("Error retrying request after waiting refresh: $e");
          nonFatalError(error: e, stackTrace: st);
        }
      }
    }

    nonFatalError(error: err, stackTrace: err.stackTrace);
    handler.next(err);
  }

  void _logResponse(Response response) {
    try {
      if (kReleaseMode) return;

      String headerMessage = "";
      response.headers.forEach((k, v) => headerMessage += '► $k: $v\n');

      const JsonEncoder encoder = JsonEncoder.withIndent('  ');
      final String prettyJson = encoder.convert(response.data);

      if (response.statusCode == 200) {
        log.d(
          "RESPONSE ${response.statusCode} ${response.requestOptions.baseUrl}${response.requestOptions.path}\n"
          "Headers:\n$headerMessage"
          "Response: $prettyJson",
        );
      } else {
        log.e(
          "RESPONSE ${response.statusCode} ${response.requestOptions.baseUrl}${response.requestOptions.path}\n"
          "Headers:\n$headerMessage"
          "Response: $prettyJson",
        );
      }
    } catch (e, stackTrace) {
      log.e("Failed to log response: $e");
      nonFatalError(error: e, stackTrace: stackTrace);
    }
  }

  Future<bool> _performTokenRefresh() async {
    final refreshToken = getData(MainBoxKeys.refreshToken) as String?;
    if (refreshToken == null) {
      await logoutBox();
      return false;
    }

    final dioForRefresh = Dio(
      BaseOptions(
        baseUrl: const String.fromEnvironment("BASE_URL"),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'x-api-key': const String.fromEnvironment('API_KEY'),
          'Authorization': 'Bearer $refreshToken',
        },
        receiveTimeout: const Duration(minutes: 1),
        connectTimeout: const Duration(seconds: 15),
        validateStatus: (s) => true,
      ),
    );

    try {
      final refreshResponse = await dioForRefresh.post(ListAPI.refreshToken);

      if (refreshResponse.statusCode == 200) {
        final data = refreshResponse.data['data'] as Map<String, dynamic>?;
        final newAccessToken = data?['access_token'] as String?;
        final newRefreshToken = data?['refresh_token'] as String?;

        if (newAccessToken != null && newRefreshToken != null) {
          await addData(MainBoxKeys.accessToken, newAccessToken);
          await addData(MainBoxKeys.refreshToken, newRefreshToken);
          return true;
        }
      } else {
        log.e(refreshResponse.statusMessage);
        log.e(refreshResponse.data);
      }
    } catch (e, stackTrace) {
      log.e("Error refreshing token: $e");
      nonFatalError(error: e, stackTrace: stackTrace);
    }

    return false;
  }
}
