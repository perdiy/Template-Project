part of 'edit_profile_cubit.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState.loading() = _Loading;
  const factory EditProfileState.success(General? data) = _Success;
  const factory EditProfileState.failure(String message) = _Failure;
}
