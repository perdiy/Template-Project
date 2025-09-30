import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operation/features/profile/profile.dart';

part 'profile.freezed.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    String? id,
    String? firstname,
    String? lastname,
    String? placebirth,
    String? nik,
    String? nip,
    String? email,
    String? birthdate,
    String? maritalStatus,
    String? departmentId,
    String? religion,
    String? bloodType,
    String? citizenAddress,
    String? residentialAddress,
    String? imageUrl,
    String? gender,
    String? deviceId,
    UserAccount? userAccount,
    Position? position,
  }) = _Profile;
}
