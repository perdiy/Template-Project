// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_picture_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangePictureResponseImpl _$$ChangePictureResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePictureResponseImpl(
      data: json['data'] == null
          ? null
          : DataChangeProfile.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChangePictureResponseImplToJson(
        _$ChangePictureResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataChangeProfileImpl _$$DataChangeProfileImplFromJson(
        Map<String, dynamic> json) =>
    _$DataChangeProfileImpl(
      profilePic: json['profilePic'] as String?,
    );

Map<String, dynamic> _$$DataChangeProfileImplToJson(
        _$DataChangeProfileImpl instance) =>
    <String, dynamic>{
      'profilePic': instance.profilePic,
    };
