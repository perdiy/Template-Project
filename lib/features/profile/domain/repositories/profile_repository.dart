import 'package:dartz/dartz.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';

abstract class ProfileRepository {
  Future<Either<Failure, Profile>> userProfile();
  Future<Either<Failure, General>> editProfile(EditProfileParams params);
  Future<Either<Failure, UserAccount>> changePassword(
    ChangePasswordParams params,
  );
  Future<Either<Failure, ChangePicture>> changePicture(
    ChangePictureParams params,
  );
}
