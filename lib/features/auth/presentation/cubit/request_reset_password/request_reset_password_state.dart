part of 'request_reset_password_cubit.dart';

@freezed
class RequestResetPasswordState with _$RequestResetPasswordState {
  const factory RequestResetPasswordState.loading() = _Loading;
  const factory RequestResetPasswordState.success(RequestResetPassword? data) =
      _Success;
  const factory RequestResetPasswordState.failure(String message) = _Failure;
}
