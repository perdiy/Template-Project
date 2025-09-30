import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';

part 'request_reset_password_state.dart';
part 'request_reset_password_cubit.freezed.dart';

class RequestResetPasswordCubit extends Cubit<RequestResetPasswordState> {
  RequestResetPasswordCubit(this._postRequestResetPassword)
    : super(const _Loading());

  final PostRequestResetPassword _postRequestResetPassword;

  Future<void> requestResetPassword(RequestResetPasswordParams params) async {
    emit(const _Loading());
    final data = await _postRequestResetPassword.call(params);

    data.fold((l) {
      if (l is ServerFailure) {
        emit(_Failure(l.message ?? ""));
      }
    }, (r) => emit(_Success(r)));
  }
}
