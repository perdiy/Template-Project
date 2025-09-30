import 'package:dartz/dartz.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';

abstract class VersionRepository {
  Future<Either<Failure, Version>> mobileVersion();
}
