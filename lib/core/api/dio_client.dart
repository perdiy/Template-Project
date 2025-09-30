import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:http_parser/http_parser.dart';
import 'package:operation/core/core.dart';
import 'package:operation/utils/utils.dart';

typedef ResponseConverter<T> = T Function(dynamic response);

Failure _mapDioErrorToFailure(DioException e) {
  // Timeout
  if (e.type == DioExceptionType.connectionTimeout ||
      e.type == DioExceptionType.receiveTimeout ||
      e.type == DioExceptionType.sendTimeout) {
    return const ServerFailure('Connection timeout');
  }

  // Jaringan putus
  if (e.error is SocketException) {
    return const ServerFailure('No internet connection');
  }

  // Default
  return ServerFailure(_extractMessage(e));
}

String _extractMessage(DioException e) {
  final data = e.response?.data;
  if (data is Map) {
    final details = data['details'];
    if (details is List && details.isNotEmpty && details.first is String) {
      return details.first as String;
    }
    if (data['message'] is String) return data['message'] as String;
  }
  return e.message ?? 'Network error occurred';
}

// Client
class DioClient with MainBoxMixin, FirebaseCrashLogger {
  final String baseUrl = const String.fromEnvironment("BASE_URL");
  final bool _isUnitTest;
  late final Dio _dio;

  DioClient({bool isUnitTest = false}) : _isUnitTest = isUnitTest {
    _dio = _createDio();

    if (!_isUnitTest) {
      _dio.interceptors.add(DioInterceptor());
    }

    // Aktifkan background JSON decoding
    final transformer = _dio.transformer;
    if (transformer is BackgroundTransformer) {
      transformer.jsonDecodeCallback = _parseJsonInBackground;
    }
  }

  Dio get dio => _dio;

  Dio _createDio() => Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'x-api-key': const String.fromEnvironment('API_KEY'),
      },
      receiveTimeout: const Duration(minutes: 1),
      connectTimeout: const Duration(seconds: 15),
      validateStatus: (s) => s != null && s >= 200 && s < 300,
    ),
  );

  Future<Either<Failure, T>> getRequest<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    required ResponseConverter<T> converter,
    bool isIsolate = true,
  }) async {
    try {
      final response = await dio.get(url, queryParameters: queryParameters);
      return Right(converter(response.data));
    } on DioException catch (e, stackTrace) {
      if (!_isUnitTest) {
        nonFatalError(error: e, stackTrace: stackTrace);
      }
      return Left(_mapDioErrorToFailure(e));
    }
  }

  Future<Either<Failure, T>> postRequest<T>(
    String url, {
    Map<String, dynamic>? data,
    FormData? formData,
    required ResponseConverter<T> converter,
    bool isIsolate = true,
  }) async {
    try {
      final options = formData != null
          ? Options(headers: {'Content-Type': 'multipart/form-data'})
          : null;

      final response = await dio.post(
        url,
        data: formData ?? data,
        options: options,
      );
      return Right(converter(response.data));
    } on DioException catch (e, stackTrace) {
      if (!_isUnitTest) {
        nonFatalError(error: e, stackTrace: stackTrace);
      }
      return Left(_mapDioErrorToFailure(e));
    }
  }

  Future<FormData> createFormData({
    required String filePath,
    required String fieldName,
  }) async {
    try {
      final file = File(filePath);

      if (!file.existsSync()) {
        throw Exception('File not found: $filePath');
      }

      final fileName = file.path.split('/').last;
      final extension = fileName.split('.').last.toLowerCase();

      final multipartFile = await MultipartFile.fromFile(
        file.path,
        filename: fileName,
        contentType: MediaType('image', extension == 'png' ? 'png' : 'jpeg'),
      );

      return FormData.fromMap({fieldName: multipartFile});
    } catch (e, stackTrace) {
      log.e("Error: $e");
      log.e("Stack trace: $stackTrace");
      rethrow;
    }
  }
}

// Isolate JSON decode
dynamic _parseAndDecode(String response) => jsonDecode(response);
Future<dynamic> _parseJsonInBackground(String text) =>
    compute(_parseAndDecode, text);
