// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAccountResponseImpl _$$UserAccountResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserAccountResponseImpl(
      data: json['data'] == null
          ? null
          : DataUserAccount.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserAccountResponseImplToJson(
        _$UserAccountResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataUserAccountImpl _$$DataUserAccountImplFromJson(
        Map<String, dynamic> json) =>
    _$DataUserAccountImpl(
      username: json['username'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$DataUserAccountImplToJson(
        _$DataUserAccountImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
    };
