import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operation/features/features.dart';
import 'package:operation/utils/utils.dart';

part 'profile_response.freezed.dart';
part 'profile_response.g.dart';

@freezed
class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({@JsonKey(name: "data") DataProfile? data}) =
      _ProfileResponse;

  const ProfileResponse._();

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);

  Profile toEntity() => Profile(
    id: data?.id,
    firstname: data?.firstname,
    lastname: data?.lastname,
    nip: data?.nip,
    nik: data?.nik,
    email: data?.email,
    departmentId: data?.departmentId,
    imageUrl: data?.imageUrl,
    placebirth: data?.placebirth,
    maritalStatus: data?.maritalStatus,
    religion: data?.religion,
    bloodType: data?.bloodType,
    citizenAddress: data?.citizenAddress,
    residentialAddress: data?.residentialAddress,
    gender: data?.gender,
    birthdate: data?.birthdate?.toShortDate(),
    deviceId: data?.deviceId,
    userAccount: UserAccount(
      username: data?.userAccount?.username,
      email: data?.userAccount?.email,
      profilePic: data?.userAccount?.profilePic,
    ),
    position: Position(positionName: data?.position?.positionName),
  );
}

@freezed
class DataProfile with _$DataProfile {
  const factory DataProfile({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "firstname") String? firstname,
    @JsonKey(name: "lastname") String? lastname,
    @JsonKey(name: "nip") String? nip,
    @JsonKey(name: "nik") String? nik,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "departmentId") String? departmentId,
    @JsonKey(name: "imageUrl") String? imageUrl,
    @JsonKey(name: "placebirth") String? placebirth,
    @JsonKey(name: "maritalStatus") String? maritalStatus,
    @JsonKey(name: "religion") String? religion,
    @JsonKey(name: "bloodType") String? bloodType,
    @JsonKey(name: "citizenAddress") String? citizenAddress,
    @JsonKey(name: "residentialAddress") String? residentialAddress,
    @JsonKey(name: "gender") String? gender,
    @JsonKey(name: "birthdate") String? birthdate,
    @JsonKey(name: "deviceId") String? deviceId,
    @JsonKey(name: "user_account") UserAccount? userAccount,
    @JsonKey(name: "position") Position? position,
  }) = _DataProfile;

  factory DataProfile.fromJson(Map<String, dynamic> json) =>
      _$DataProfileFromJson(json);
}

@freezed
class UserAccount with _$UserAccount {
  const factory UserAccount({
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "profilePic") String? profilePic,
  }) = _UserAccount;

  factory UserAccount.fromJson(Map<String, dynamic> json) =>
      _$UserAccountFromJson(json);
}

@freezed
class Position with _$Position {
  const factory Position({
    @JsonKey(name: "positionName") String? positionName,
  }) = _Position;

  factory Position.fromJson(Map<String, dynamic> json) =>
      _$PositionFromJson(json);
}
