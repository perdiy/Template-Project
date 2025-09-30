import 'package:dartz/dartz.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';

abstract class VersionRemoteDatasource {
  Future<Either<Failure, VersionResponse>> versioning();
}

class VersionRemoteDatasourceImpl implements VersionRemoteDatasource {
  final DioClient _client;

  VersionRemoteDatasourceImpl(this._client);

  @override
  Future<Either<Failure, VersionResponse>> versioning() async {
    final response = await _client.getRequest(
      ListAPI.mobileVersioning,
      converter: (response) =>
          VersionResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }
}
