import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';

part 'versioning_state.dart';
part 'versioning_cubit.freezed.dart';

class VersioningCubit extends Cubit<VersioningState> {
  VersioningCubit(this._getVersion) : super(const _Loading());

  final GetVersion _getVersion;

  Future<void> mobileVersion() async {
    emit(const _Loading());
    final data = await _getVersion.call(NoParams());

    data.fold((l) {
      if (l is ServerFailure) {
        emit(_Failure(l.message ?? ""));
      }
    }, (r) => emit(_Success(r.version)));
  }
}
