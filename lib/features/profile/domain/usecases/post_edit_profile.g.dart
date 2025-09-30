// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_edit_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditProfileParamsImpl _$$EditProfileParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$EditProfileParamsImpl(
      firstname: json['firstname'] as String? ?? "",
      lastname: json['lastname'] as String? ?? "",
      nik: json['nik'] as String? ?? "",
      email: json['email'] as String? ?? "",
      birthplace: json['birthplace'] as String? ?? "",
      datebirth: json['datebirth'] as String? ?? "",
      gender: json['gender'] as String? ?? "",
      maritalStatus: json['maritalStatus'] as String? ?? "",
      religion: json['religion'] as String? ?? "",
      bloodType: json['bloodType'] as String? ?? "",
      citizenAddress: json['citizenAddress'] as String? ?? "",
      residentialAddress: json['residentialAddress'] as String? ?? "",
    );

Map<String, dynamic> _$$EditProfileParamsImplToJson(
        _$EditProfileParamsImpl instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'nik': instance.nik,
      'email': instance.email,
      'birthplace': instance.birthplace,
      'datebirth': instance.datebirth,
      'gender': instance.gender,
      'maritalStatus': instance.maritalStatus,
      'religion': instance.religion,
      'bloodType': instance.bloodType,
      'citizenAddress': instance.citizenAddress,
      'residentialAddress': instance.residentialAddress,
    };
