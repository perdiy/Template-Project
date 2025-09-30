import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operation/core/core.dart';
import 'package:operation/dependencies_injection.dart';
import 'package:operation/features/features.dart';
import 'package:operation/utils/utils.dart';

part 'logout_state.dart';
part 'logout_cubit.freezed.dart';

class LogoutCubit extends Cubit<LogoutState> {
  final PostLogout _postLogout;

  LogoutCubit(this._postLogout) : super(const _Loading());

  Future<void> logout() async {
    emit(const _Loading());
    final data = await _postLogout.call(NoParams());
    data.fold((l) => emit(_Failure((l as ServerFailure).message ?? "")), (
      r,
    ) async {
      emit(_Success(r.userAccountId ?? ""));
      await sl<MainBoxMixin>().logoutBox();
    });
  }
}
