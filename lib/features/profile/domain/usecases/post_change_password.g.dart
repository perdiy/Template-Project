// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_change_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangePasswordParamsImpl _$$ChangePasswordParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePasswordParamsImpl(
      newPassword: json['newPassword'] as String? ?? "",
      oldPassword: json['oldPassword'] as String? ?? "",
    );

Map<String, dynamic> _$$ChangePasswordParamsImplToJson(
        _$ChangePasswordParamsImpl instance) =>
    <String, dynamic>{
      'newPassword': instance.newPassword,
      'oldPassword': instance.oldPassword,
    };
