import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operation/features/features.dart';

part 'change_picture_response.freezed.dart';
part 'change_picture_response.g.dart';

@freezed
class ChangePictureResponse with _$ChangePictureResponse {
  const factory ChangePictureResponse({
    @JsonKey(name: "data") DataChangeProfile? data,
  }) = _ChangePictureResponse;

  const ChangePictureResponse._();

  factory ChangePictureResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangePictureResponseFromJson(json);

  ChangePicture toEntity() => ChangePicture(profilePic: data?.profilePic);
}

@freezed
class DataChangeProfile with _$DataChangeProfile {
  const factory DataChangeProfile({
    @JsonKey(name: "profilePic") String? profilePic,
  }) = _DataChangeProfile;

  factory DataChangeProfile.fromJson(Map<String, dynamic> json) =>
      _$DataChangeProfileFromJson(json);
}
