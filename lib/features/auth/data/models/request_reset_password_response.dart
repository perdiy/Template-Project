import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operation/features/features.dart';

part 'request_reset_password_response.freezed.dart';
part 'request_reset_password_response.g.dart';

@freezed
class RequestResetPasswordResponse with _$RequestResetPasswordResponse {
  const factory RequestResetPasswordResponse({
    @JsonKey(name: "data") DataRequestResetPassword? data,
  }) = _RequestResetPasswordResponse;

  const RequestResetPasswordResponse._();

  factory RequestResetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$RequestResetPasswordResponseFromJson(json);

  RequestResetPassword toEntity() =>
      RequestResetPassword(expiredAt: data?.expiredAt);
}

@freezed
class DataRequestResetPassword with _$DataRequestResetPassword {
  const factory DataRequestResetPassword({
    @JsonKey(name: "expiredAt") String? expiredAt,
  }) = _DataRequestResetPassword;

  factory DataRequestResetPassword.fromJson(Map<String, dynamic> json) =>
      _$DataRequestResetPasswordFromJson(json);
}
