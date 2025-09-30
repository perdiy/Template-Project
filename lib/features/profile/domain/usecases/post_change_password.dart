import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';

part 'post_change_password.freezed.dart';
part 'post_change_password.g.dart';

class PostChangePassword extends UseCase<UserAccount, ChangePasswordParams> {
  final ProfileRepository _repo;

  PostChangePassword(this._repo);

  @override
  Future<Either<Failure, UserAccount>> call(ChangePasswordParams params) =>
      _repo.changePassword(params);
}

@freezed
class ChangePasswordParams with _$ChangePasswordParams {
  const factory ChangePasswordParams({
    @Default("") String newPassword,
    @Default("") String oldPassword,
  }) = _ChangePasswordParams;

  factory ChangePasswordParams.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordParamsFromJson(json);
}
