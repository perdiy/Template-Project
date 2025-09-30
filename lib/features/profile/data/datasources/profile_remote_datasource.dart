import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';

abstract class ProfileRemoteDatasource {
  Future<Either<Failure, ProfileResponse>> userProfile();
  Future<Either<Failure, UserAccountResponse>> changePassword(
    ChangePasswordParams changePasswordParams,
  );
  Future<Either<Failure, GeneralResponse>> editProfile(
    EditProfileParams editProfileParams,
  );
  Future<Either<Failure, ChangePictureResponse>> changePicture(
    ChangePictureParams changePictureParams,
  );
}

class ProfileRemoteDatasourceImpl implements ProfileRemoteDatasource {
  final DioClient _client;

  ProfileRemoteDatasourceImpl(this._client);

  @override
  Future<Either<Failure, ProfileResponse>> userProfile() async {
    final response = await _client.getRequest(
      ListAPI.userProfile,
      converter: (response) =>
          ProfileResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }

  @override
  Future<Either<Failure, UserAccountResponse>> changePassword(
    ChangePasswordParams changePasswordParams,
  ) async {
    final response = await _client.postRequest(
      ListAPI.changePassword,
      data: changePasswordParams.toJson(),
      converter: (response) =>
          UserAccountResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }

  @override
  Future<Either<Failure, GeneralResponse>> editProfile(
    EditProfileParams editProfileParams,
  ) async {
    final response = await _client.postRequest(
      ListAPI.editProfile,
      data: editProfileParams.toJson(),
      converter: (response) =>
          GeneralResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }

  @override
  Future<Either<Failure, ChangePictureResponse>> changePicture(
    ChangePictureParams changePictureParams,
  ) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        changePictureParams.imagePath,
        filename: changePictureParams.imagePath.split('/').last,
        contentType: MediaType('image', 'jpeg'),
      ),
    });

    final response = await _client.postRequest(
      ListAPI.changePicture,
      formData: formData,
      converter: (response) =>
          ChangePictureResponse.fromJson(response as Map<String, dynamic>),
      isIsolate: false,
    );

    return response;
  }
}
