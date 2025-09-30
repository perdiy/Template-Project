part of 'reset_password_cubit.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState.loading() = _Loading;
  const factory ResetPasswordState.success(ResetPassword? data) = _Success;
  const factory ResetPasswordState.failure(String message) = _Failure;
}
