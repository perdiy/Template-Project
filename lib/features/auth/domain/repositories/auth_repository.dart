import 'package:dartz/dartz.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';

abstract class AuthRepository {
  Future<Either<Failure, Auth>> login(LoginParams loginParams);
  Future<Either<Failure, General>> logout();
  Future<Either<Failure, RequestResetPassword>> requestResetPassword(
    RequestResetPasswordParams requestResetPasswordParams,
  );
  Future<Either<Failure, ResetPassword>> resetPassword(
    ResetPasswordParams resetPasswordParams,
  );
}
