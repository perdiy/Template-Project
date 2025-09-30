import 'package:dartz/dartz.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';

class GetVersion extends UseCase<Version, NoParams> {
  final VersionRepository _repo;

  GetVersion(this._repo);

  @override
  Future<Either<Failure, Version>> call(NoParams params) =>
      _repo.mobileVersion();
}
