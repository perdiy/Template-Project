import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';

@freezed
class Auth with _$Auth {
  const factory Auth({
    String? accessToken,
    String? refreshToken,
  }) = _Auth;
}
