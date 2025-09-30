import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';

part 'post_request_reset_password.freezed.dart';
part 'post_request_reset_password.g.dart';

class PostRequestResetPassword
    extends UseCase<RequestResetPassword, RequestResetPasswordParams> {
  final AuthRepository _repo;

  PostRequestResetPassword(this._repo);

  @override
  Future<Either<Failure, RequestResetPassword>> call(
    RequestResetPasswordParams params,
  ) => _repo.requestResetPassword(params);
}

@freezed
class RequestResetPasswordParams with _$RequestResetPasswordParams {
  const factory RequestResetPasswordParams({@Default("") String email}) =
      _RequestResetPasswordParams;

  factory RequestResetPasswordParams.fromJson(Map<String, dynamic> json) =>
      _$RequestResetPasswordParamsFromJson(json);
}
