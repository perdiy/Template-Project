part of 'change_picture_cubit.dart';

@freezed
class ChangePictureState with _$ChangePictureState {
  const factory ChangePictureState.loading() = _Loading;
  const factory ChangePictureState.success(ChangePicture? data) = _Success;
  const factory ChangePictureState.failure(String message) = _Failure;
}
