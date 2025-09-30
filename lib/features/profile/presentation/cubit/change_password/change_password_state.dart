part of 'change_password_cubit.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState.loading() = _Loading;
  const factory ChangePasswordState.success(UserAccount? data) = _Success;
  const factory ChangePasswordState.failure(String message) = _Failure;
}
