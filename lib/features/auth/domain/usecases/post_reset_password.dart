import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';

part 'post_reset_password.freezed.dart';
part 'post_reset_password.g.dart';

class PostResetPassword extends UseCase<ResetPassword, ResetPasswordParams> {
  final AuthRepository _repo;

  PostResetPassword(this._repo);

  @override
  Future<Either<Failure, ResetPassword>> call(ResetPasswordParams params) =>
      _repo.resetPassword(params);
}

@freezed
class ResetPasswordParams with _$ResetPasswordParams {
  const factory ResetPasswordParams({@Default("") String newPassword}) =
      _ResetPasswordParams;

  factory ResetPasswordParams.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordParamsFromJson(json);
}
