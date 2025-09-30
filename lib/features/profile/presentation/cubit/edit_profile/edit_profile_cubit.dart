import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';

part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit(this._postEditProfile) : super(const _Loading());

  final PostEditProfile _postEditProfile;

  Future<void> editProfile(EditProfileParams params) async {
    emit(const _Loading());
    final data = await _postEditProfile.call(params);

    data.fold((l) {
      if (l is ServerFailure) {
        emit(_Failure(l.message ?? ""));
      }
    }, (r) => emit(_Success(r)));
  }
}
