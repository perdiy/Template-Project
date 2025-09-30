// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VersionResponseImpl _$$VersionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VersionResponseImpl(
      data: json['data'] == null
          ? null
          : DataVersion.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VersionResponseImplToJson(
        _$VersionResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataVersionImpl _$$DataVersionImplFromJson(Map<String, dynamic> json) =>
    _$DataVersionImpl(
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$DataVersionImplToJson(_$DataVersionImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
    };
