import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operation/features/features.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
class AuthResponse with _$AuthResponse {
  const factory AuthResponse({@JsonKey(name: "data") DataLogin? data}) =
      _AuthResponse;

  const AuthResponse._();

  Auth toEntity() =>
      Auth(accessToken: data?.accessToken, refreshToken: data?.refreshToken);

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

@freezed
class DataLogin with _$DataLogin {
  const factory DataLogin({
    @JsonKey(name: "access_token") String? accessToken,
    @JsonKey(name: "refresh_token") String? refreshToken,
  }) = _DataLogin;

  factory DataLogin.fromJson(Map<String, dynamic> json) =>
      _$DataLoginFromJson(json);
}
