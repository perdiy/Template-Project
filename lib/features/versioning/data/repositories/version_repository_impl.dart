import 'package:dartz/dartz.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';
import 'package:operation/utils/services/hive/hive.dart';

class VersionRepositoryImpl implements VersionRepository {
  /// Data Source
  final VersionRemoteDatasource versionRemoteDatasource;
  final MainBoxMixin mainBoxMixin;

  const VersionRepositoryImpl(this.versionRemoteDatasource, this.mainBoxMixin);

  @override
  Future<Either<Failure, Version>> mobileVersion() async {
    final response = await versionRemoteDatasource.versioning();

    return response.fold(
      (failure) => Left(failure),
      (versionResponse) => Right(versionResponse.toEntity()),
    );
  }
}
