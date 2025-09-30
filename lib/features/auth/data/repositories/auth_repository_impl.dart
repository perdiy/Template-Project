import 'package:dartz/dartz.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';
import 'package:operation/utils/utils.dart';

class AuthRepositoryImpl implements AuthRepository {
  /// Data Source
  final AuthRemoteDatasource authRemoteDatasource;
  final MainBoxMixin mainBoxMixin;
  // final WebSocketService webSocketService;

  const AuthRepositoryImpl(
    this.authRemoteDatasource,
    this.mainBoxMixin,
    // this.webSocketService,
  );

  @override
  Future<Either<Failure, Auth>> login(LoginParams loginParams) async {
    final response = await authRemoteDatasource.login(loginParams);

    return response.fold((failure) => Left(failure), (authResponse) {
      mainBoxMixin.addData(
        MainBoxKeys.accessToken,
        authResponse.data?.accessToken,
      );
      mainBoxMixin.addData(
        MainBoxKeys.refreshToken,
        authResponse.data?.refreshToken,
      );
      mainBoxMixin.addData(MainBoxKeys.isLogin, true);

      // webSocketService.connect();

      return Right(authResponse.toEntity());
    });
  }

  @override
  Future<Either<Failure, General>> logout() async {
    final response = await authRemoteDatasource.logout();

    return response.fold((failure) => Left(failure), (logoutResponse) {
      // webSocketService.disconnect();
      return Right(logoutResponse.toEntity());
    });
  }

  @override
  Future<Either<Failure, RequestResetPassword>> requestResetPassword(
    RequestResetPasswordParams requestResetPasswordParams,
  ) async {
    final response = await authRemoteDatasource.requestResetPassword(
      requestResetPasswordParams,
    );

    return response.fold(
      (failure) => Left(failure),
      (requestResetPasswordParams) =>
          Right(requestResetPasswordParams.toEntity()),
    );
  }

  @override
  Future<Either<Failure, ResetPassword>> resetPassword(
    ResetPasswordParams resetPasswordParams,
  ) async {
    final response = await authRemoteDatasource.resetPassword(
      resetPasswordParams,
    );

    return response.fold(
      (failure) => Left(failure),
      (resetPasswordResponse) => Right(resetPasswordResponse.toEntity()),
    );
  }
}
