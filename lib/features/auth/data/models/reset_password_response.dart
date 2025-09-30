import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operation/features/features.dart';

part 'reset_password_response.freezed.dart';
part 'reset_password_response.g.dart';

@freezed
class ResetPasswordResponse with _$ResetPasswordResponse {
  const factory ResetPasswordResponse({String? timestamp}) =
      _ResetPasswordResponse;

  const ResetPasswordResponse._();

  factory ResetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordResponseFromJson(json);

  ResetPassword toEntity() => ResetPassword(timestamp: timestamp);
}
