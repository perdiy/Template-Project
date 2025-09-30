// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileResponseImpl _$$ProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileResponseImpl(
      data: json['data'] == null
          ? null
          : DataProfile.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileResponseImplToJson(
        _$ProfileResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataProfileImpl _$$DataProfileImplFromJson(Map<String, dynamic> json) =>
    _$DataProfileImpl(
      id: json['id'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      nip: json['nip'] as String?,
      nik: json['nik'] as String?,
      email: json['email'] as String?,
      departmentId: json['departmentId'] as String?,
      imageUrl: json['imageUrl'] as String?,
      placebirth: json['placebirth'] as String?,
      maritalStatus: json['maritalStatus'] as String?,
      religion: json['religion'] as String?,
      bloodType: json['bloodType'] as String?,
      citizenAddress: json['citizenAddress'] as String?,
      residentialAddress: json['residentialAddress'] as String?,
      gender: json['gender'] as String?,
      birthdate: json['birthdate'] as String?,
      deviceId: json['deviceId'] as String?,
      userAccount: json['user_account'] == null
          ? null
          : UserAccount.fromJson(json['user_account'] as Map<String, dynamic>),
      position: json['position'] == null
          ? null
          : Position.fromJson(json['position'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataProfileImplToJson(_$DataProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'nip': instance.nip,
      'nik': instance.nik,
      'email': instance.email,
      'departmentId': instance.departmentId,
      'imageUrl': instance.imageUrl,
      'placebirth': instance.placebirth,
      'maritalStatus': instance.maritalStatus,
      'religion': instance.religion,
      'bloodType': instance.bloodType,
      'citizenAddress': instance.citizenAddress,
      'residentialAddress': instance.residentialAddress,
      'gender': instance.gender,
      'birthdate': instance.birthdate,
      'deviceId': instance.deviceId,
      'user_account': instance.userAccount,
      'position': instance.position,
    };

_$UserAccountImpl _$$UserAccountImplFromJson(Map<String, dynamic> json) =>
    _$UserAccountImpl(
      username: json['username'] as String?,
      email: json['email'] as String?,
      profilePic: json['profilePic'] as String?,
    );

Map<String, dynamic> _$$UserAccountImplToJson(_$UserAccountImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'profilePic': instance.profilePic,
    };

_$PositionImpl _$$PositionImplFromJson(Map<String, dynamic> json) =>
    _$PositionImpl(
      positionName: json['positionName'] as String?,
    );

Map<String, dynamic> _$$PositionImplToJson(_$PositionImpl instance) =>
    <String, dynamic>{
      'positionName': instance.positionName,
    };
