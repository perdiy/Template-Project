import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operation/features/features.dart';

part 'user_account_response.freezed.dart';
part 'user_account_response.g.dart';

@freezed
class UserAccountResponse with _$UserAccountResponse {
  const factory UserAccountResponse({
    @JsonKey(name: "data") DataUserAccount? data,
  }) = _UserAccountResponse;

  const UserAccountResponse._();

  factory UserAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$UserAccountResponseFromJson(json);

  UserAccount toEntity() =>
      UserAccount(username: data?.username, email: data?.email);
}

@freezed
class DataUserAccount with _$DataUserAccount {
  const factory DataUserAccount({
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "email") String? email,
  }) = _DataUserAccount;

  factory DataUserAccount.fromJson(Map<String, dynamic> json) =>
      _$DataUserAccountFromJson(json);
}
