// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_reset_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestResetPasswordResponseImpl _$$RequestResetPasswordResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestResetPasswordResponseImpl(
      data: json['data'] == null
          ? null
          : DataRequestResetPassword.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RequestResetPasswordResponseImplToJson(
        _$RequestResetPasswordResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataRequestResetPasswordImpl _$$DataRequestResetPasswordImplFromJson(
        Map<String, dynamic> json) =>
    _$DataRequestResetPasswordImpl(
      expiredAt: json['expiredAt'] as String?,
    );

Map<String, dynamic> _$$DataRequestResetPasswordImplToJson(
        _$DataRequestResetPasswordImpl instance) =>
    <String, dynamic>{
      'expiredAt': instance.expiredAt,
    };
