import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_picture.freezed.dart';

@freezed
class ChangePicture with _$ChangePicture {
  const factory ChangePicture({
    String? profilePic,
  }) = _ChangePicture;
}
