import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token.freezed.dart';

@freezed
class RefreshToken with _$RefreshToken {
  const factory RefreshToken({
    bool? success,
    String? accessToken,
    String? refreshToken,
  }) = _RefreshToken;
}
