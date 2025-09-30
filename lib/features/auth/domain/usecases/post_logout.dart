import 'package:dartz/dartz.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';

class PostLogout extends UseCase<General, NoParams> {
  final AuthRepository _repo;

  // coverage:ignore-start
  PostLogout(this._repo);

  @override
  Future<Either<Failure, General>> call(NoParams _) => _repo.logout();
  // coverage:ignore-end
}
