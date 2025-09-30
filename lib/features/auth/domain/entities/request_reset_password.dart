import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_reset_password.freezed.dart';

@freezed
class RequestResetPassword with _$RequestResetPassword {
  const factory RequestResetPassword({
    String? expiredAt,
  }) = _RequestResetPassword;
}
