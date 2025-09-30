import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password.freezed.dart';

@freezed
class ResetPassword with _$ResetPassword {
  const factory ResetPassword({
    String? timestamp,
  }) = _ResetPassword;
}
