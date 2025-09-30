import 'package:dartz/dartz.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';

class GetProfile extends UseCase<Profile, NoParams> {
  final ProfileRepository _repo;

  GetProfile(this._repo);

  @override
  Future<Either<Failure, Profile>> call(NoParams params) => _repo.userProfile();
}
