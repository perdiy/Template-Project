// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeneralResponseImpl _$$GeneralResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GeneralResponseImpl(
      data: json['data'] == null
          ? null
          : DataGeneral.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GeneralResponseImplToJson(
        _$GeneralResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataGeneralImpl _$$DataGeneralImplFromJson(Map<String, dynamic> json) =>
    _$DataGeneralImpl(
      userAccountId: json['userAccountId'] as String?,
    );

Map<String, dynamic> _$$DataGeneralImplToJson(_$DataGeneralImpl instance) =>
    <String, dynamic>{
      'userAccountId': instance.userAccountId,
    };
