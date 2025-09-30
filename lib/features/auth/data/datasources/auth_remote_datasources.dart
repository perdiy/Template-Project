import 'package:dartz/dartz.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';

abstract class AuthRemoteDatasource {
  Future<Either<Failure, AuthResponse>> login(LoginParams loginParams);
  Future<Either<Failure, GeneralResponse>> logout();
  Future<Either<Failure, RequestResetPasswordResponse>> requestResetPassword(
    RequestResetPasswordParams requestResetPasswordParams,
  );
  Future<Either<Failure, ResetPasswordResponse>> resetPassword(
    ResetPasswordParams resetPasswordParams,
  );
}

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  final DioClient _client;

  AuthRemoteDatasourceImpl(this._client);

  @override
  Future<Either<Failure, AuthResponse>> login(LoginParams loginParams) async {
    final response = await _client.postRequest(
      ListAPI.login,
      data: loginParams.toJson(),
      converter: (response) =>
          AuthResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }

  @override
  Future<Either<Failure, GeneralResponse>> logout() async {
    final response = await _client.postRequest(
      ListAPI.logout,
      converter: (response) =>
          GeneralResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }

  @override
  Future<Either<Failure, RequestResetPasswordResponse>> requestResetPassword(
    RequestResetPasswordParams requestResetPasswordParams,
  ) async {
    final response = await _client.postRequest(
      ListAPI.forgotPassword,
      data: requestResetPasswordParams.toJson(),
      converter: (response) => RequestResetPasswordResponse.fromJson(
        response as Map<String, dynamic>,
      ),
    );

    return response;
  }

  @override
  Future<Either<Failure, ResetPasswordResponse>> resetPassword(
    ResetPasswordParams resetPasswordParams,
  ) async {
    final response = await _client.postRequest(
      ListAPI.resetPassword,
      data: resetPasswordParams.toJson(),
      converter: (response) =>
          ResetPasswordResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }
}
