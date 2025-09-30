import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';

part 'change_picture_state.dart';
part 'change_picture_cubit.freezed.dart';

class ChangePictureCubit extends Cubit<ChangePictureState> {
  ChangePictureCubit(this._postChangePicture) : super(const _Loading());

  final PostChangePicture _postChangePicture;

  Future<void> changePicture(ChangePictureParams params) async {
    emit(const _Loading());
    final data = await _postChangePicture.call(params);

    data.fold((l) {
      if (l is ServerFailure) {
        emit(_Failure(l.message ?? ""));
      }
    }, (r) => emit(_Success(r)));
  }
}
