import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';

part 'post_change_picture.freezed.dart';
part 'post_change_picture.g.dart';

class PostChangePicture extends UseCase<ChangePicture, ChangePictureParams> {
  final ProfileRepository _repo;

  PostChangePicture(this._repo);

  @override
  Future<Either<Failure, ChangePicture>> call(ChangePictureParams params) =>
      _repo.changePicture(params);
}

@freezed
class ChangePictureParams with _$ChangePictureParams {
  const factory ChangePictureParams({@Default("") String imagePath}) =
      _ChangePictureParams;

  factory ChangePictureParams.fromJson(Map<String, dynamic> json) =>
      _$ChangePictureParamsFromJson(json);
}
