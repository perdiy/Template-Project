import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';

part 'change_password_state.dart';
part 'change_password_cubit.freezed.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  ChangePasswordCubit(this._postChangePassword) : super(const _Loading());

  final PostChangePassword _postChangePassword;

  Future<void> changePassword(ChangePasswordParams params) async {
    emit(const _Loading());
    final data = await _postChangePassword.call(params);

    data.fold((l) {
      if (l is ServerFailure) {
        emit(_Failure(l.message ?? ""));
      }
    }, (r) => emit(_Success(r)));
  }
}
