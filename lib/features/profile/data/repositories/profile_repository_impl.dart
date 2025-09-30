import 'package:dartz/dartz.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';
import 'package:operation/utils/services/hive/hive.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  /// Data Source
  final ProfileRemoteDatasource profileRemoteDatasource;
  final MainBoxMixin mainBoxMixin;

  const ProfileRepositoryImpl(this.profileRemoteDatasource, this.mainBoxMixin);

  @override
  Future<Either<Failure, Profile>> userProfile() async {
    final response = await profileRemoteDatasource.userProfile();

    return response.fold((failure) => Left(failure), (userProfileResponse) {
      return Right(userProfileResponse.toEntity());
    });
  }

  @override
  Future<Either<Failure, UserAccount>> changePassword(
    ChangePasswordParams params,
  ) async {
    final response = await profileRemoteDatasource.changePassword(params);

    return response.fold(
      (failure) => Left(failure),
      (changePasswordResponse) => Right(changePasswordResponse.toEntity()),
    );
  }

  @override
  Future<Either<Failure, General>> editProfile(EditProfileParams params) async {
    final response = await profileRemoteDatasource.editProfile(params);

    return response.fold(
      (failure) => Left(failure),
      (editProfileResponse) => Right(editProfileResponse.toEntity()),
    );
  }

  @override
  Future<Either<Failure, ChangePicture>> changePicture(
    ChangePictureParams params,
  ) async {
    final response = await profileRemoteDatasource.changePicture(params);

    return response.fold(
      (failure) => Left(failure),
      (changePictureResponse) => Right(changePictureResponse.toEntity()),
    );
  }
}
