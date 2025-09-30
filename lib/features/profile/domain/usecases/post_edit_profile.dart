import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';

part 'post_edit_profile.freezed.dart';
part 'post_edit_profile.g.dart';

class PostEditProfile extends UseCase<General, EditProfileParams> {
  final ProfileRepository _repo;

  PostEditProfile(this._repo);

  @override
  Future<Either<Failure, General>> call(EditProfileParams params) =>
      _repo.editProfile(params);
}

@freezed
class EditProfileParams with _$EditProfileParams {
  const factory EditProfileParams({
    @Default("") String firstname,
    @Default("") String lastname,
    @Default("") String nik,
    @Default("") String email,
    @Default("") String birthplace,
    @Default("") String datebirth,
    @Default("") String gender,
    @Default("") String maritalStatus,
    @Default("") String religion,
    @Default("") String bloodType,
    @Default("") String citizenAddress,
    @Default("") String residentialAddress,
  }) = _EditProfileParams;

  factory EditProfileParams.fromJson(Map<String, dynamic> json) =>
      _$EditProfileParamsFromJson(json);
}
