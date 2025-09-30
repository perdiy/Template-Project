// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) {
  return _ProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$ProfileResponse {
  @JsonKey(name: "data")
  DataProfile? get data => throw _privateConstructorUsedError;

  /// Serializes this ProfileResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileResponseCopyWith<ProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileResponseCopyWith<$Res> {
  factory $ProfileResponseCopyWith(
          ProfileResponse value, $Res Function(ProfileResponse) then) =
      _$ProfileResponseCopyWithImpl<$Res, ProfileResponse>;
  @useResult
  $Res call({@JsonKey(name: "data") DataProfile? data});

  $DataProfileCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProfileResponseCopyWithImpl<$Res, $Val extends ProfileResponse>
    implements $ProfileResponseCopyWith<$Res> {
  _$ProfileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataProfile?,
    ) as $Val);
  }

  /// Create a copy of ProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataProfileCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataProfileCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileResponseImplCopyWith<$Res>
    implements $ProfileResponseCopyWith<$Res> {
  factory _$$ProfileResponseImplCopyWith(_$ProfileResponseImpl value,
          $Res Function(_$ProfileResponseImpl) then) =
      __$$ProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") DataProfile? data});

  @override
  $DataProfileCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProfileResponseImplCopyWithImpl<$Res>
    extends _$ProfileResponseCopyWithImpl<$Res, _$ProfileResponseImpl>
    implements _$$ProfileResponseImplCopyWith<$Res> {
  __$$ProfileResponseImplCopyWithImpl(
      _$ProfileResponseImpl _value, $Res Function(_$ProfileResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ProfileResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataProfile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileResponseImpl extends _ProfileResponse {
  const _$ProfileResponseImpl({@JsonKey(name: "data") this.data}) : super._();

  factory _$ProfileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileResponseImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final DataProfile? data;

  @override
  String toString() {
    return 'ProfileResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of ProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileResponseImplCopyWith<_$ProfileResponseImpl> get copyWith =>
      __$$ProfileResponseImplCopyWithImpl<_$ProfileResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _ProfileResponse extends ProfileResponse {
  const factory _ProfileResponse(
      {@JsonKey(name: "data") final DataProfile? data}) = _$ProfileResponseImpl;
  const _ProfileResponse._() : super._();

  factory _ProfileResponse.fromJson(Map<String, dynamic> json) =
      _$ProfileResponseImpl.fromJson;

  @override
  @JsonKey(name: "data")
  DataProfile? get data;

  /// Create a copy of ProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileResponseImplCopyWith<_$ProfileResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataProfile _$DataProfileFromJson(Map<String, dynamic> json) {
  return _DataProfile.fromJson(json);
}

/// @nodoc
mixin _$DataProfile {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "firstname")
  String? get firstname => throw _privateConstructorUsedError;
  @JsonKey(name: "lastname")
  String? get lastname => throw _privateConstructorUsedError;
  @JsonKey(name: "nip")
  String? get nip => throw _privateConstructorUsedError;
  @JsonKey(name: "nik")
  String? get nik => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "departmentId")
  String? get departmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "imageUrl")
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "placebirth")
  String? get placebirth => throw _privateConstructorUsedError;
  @JsonKey(name: "maritalStatus")
  String? get maritalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "religion")
  String? get religion => throw _privateConstructorUsedError;
  @JsonKey(name: "bloodType")
  String? get bloodType => throw _privateConstructorUsedError;
  @JsonKey(name: "citizenAddress")
  String? get citizenAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "residentialAddress")
  String? get residentialAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "gender")
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: "birthdate")
  String? get birthdate => throw _privateConstructorUsedError;
  @JsonKey(name: "deviceId")
  String? get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_account")
  UserAccount? get userAccount => throw _privateConstructorUsedError;
  @JsonKey(name: "position")
  Position? get position => throw _privateConstructorUsedError;

  /// Serializes this DataProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataProfileCopyWith<DataProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataProfileCopyWith<$Res> {
  factory $DataProfileCopyWith(
          DataProfile value, $Res Function(DataProfile) then) =
      _$DataProfileCopyWithImpl<$Res, DataProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "firstname") String? firstname,
      @JsonKey(name: "lastname") String? lastname,
      @JsonKey(name: "nip") String? nip,
      @JsonKey(name: "nik") String? nik,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "departmentId") String? departmentId,
      @JsonKey(name: "imageUrl") String? imageUrl,
      @JsonKey(name: "placebirth") String? placebirth,
      @JsonKey(name: "maritalStatus") String? maritalStatus,
      @JsonKey(name: "religion") String? religion,
      @JsonKey(name: "bloodType") String? bloodType,
      @JsonKey(name: "citizenAddress") String? citizenAddress,
      @JsonKey(name: "residentialAddress") String? residentialAddress,
      @JsonKey(name: "gender") String? gender,
      @JsonKey(name: "birthdate") String? birthdate,
      @JsonKey(name: "deviceId") String? deviceId,
      @JsonKey(name: "user_account") UserAccount? userAccount,
      @JsonKey(name: "position") Position? position});

  $UserAccountCopyWith<$Res>? get userAccount;
  $PositionCopyWith<$Res>? get position;
}

/// @nodoc
class _$DataProfileCopyWithImpl<$Res, $Val extends DataProfile>
    implements $DataProfileCopyWith<$Res> {
  _$DataProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? nip = freezed,
    Object? nik = freezed,
    Object? email = freezed,
    Object? departmentId = freezed,
    Object? imageUrl = freezed,
    Object? placebirth = freezed,
    Object? maritalStatus = freezed,
    Object? religion = freezed,
    Object? bloodType = freezed,
    Object? citizenAddress = freezed,
    Object? residentialAddress = freezed,
    Object? gender = freezed,
    Object? birthdate = freezed,
    Object? deviceId = freezed,
    Object? userAccount = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      nip: freezed == nip
          ? _value.nip
          : nip // ignore: cast_nullable_to_non_nullable
              as String?,
      nik: freezed == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      departmentId: freezed == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      placebirth: freezed == placebirth
          ? _value.placebirth
          : placebirth // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      religion: freezed == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as String?,
      bloodType: freezed == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String?,
      citizenAddress: freezed == citizenAddress
          ? _value.citizenAddress
          : citizenAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      residentialAddress: freezed == residentialAddress
          ? _value.residentialAddress
          : residentialAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      userAccount: freezed == userAccount
          ? _value.userAccount
          : userAccount // ignore: cast_nullable_to_non_nullable
              as UserAccount?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
    ) as $Val);
  }

  /// Create a copy of DataProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAccountCopyWith<$Res>? get userAccount {
    if (_value.userAccount == null) {
      return null;
    }

    return $UserAccountCopyWith<$Res>(_value.userAccount!, (value) {
      return _then(_value.copyWith(userAccount: value) as $Val);
    });
  }

  /// Create a copy of DataProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res>? get position {
    if (_value.position == null) {
      return null;
    }

    return $PositionCopyWith<$Res>(_value.position!, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataProfileImplCopyWith<$Res>
    implements $DataProfileCopyWith<$Res> {
  factory _$$DataProfileImplCopyWith(
          _$DataProfileImpl value, $Res Function(_$DataProfileImpl) then) =
      __$$DataProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "firstname") String? firstname,
      @JsonKey(name: "lastname") String? lastname,
      @JsonKey(name: "nip") String? nip,
      @JsonKey(name: "nik") String? nik,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "departmentId") String? departmentId,
      @JsonKey(name: "imageUrl") String? imageUrl,
      @JsonKey(name: "placebirth") String? placebirth,
      @JsonKey(name: "maritalStatus") String? maritalStatus,
      @JsonKey(name: "religion") String? religion,
      @JsonKey(name: "bloodType") String? bloodType,
      @JsonKey(name: "citizenAddress") String? citizenAddress,
      @JsonKey(name: "residentialAddress") String? residentialAddress,
      @JsonKey(name: "gender") String? gender,
      @JsonKey(name: "birthdate") String? birthdate,
      @JsonKey(name: "deviceId") String? deviceId,
      @JsonKey(name: "user_account") UserAccount? userAccount,
      @JsonKey(name: "position") Position? position});

  @override
  $UserAccountCopyWith<$Res>? get userAccount;
  @override
  $PositionCopyWith<$Res>? get position;
}

/// @nodoc
class __$$DataProfileImplCopyWithImpl<$Res>
    extends _$DataProfileCopyWithImpl<$Res, _$DataProfileImpl>
    implements _$$DataProfileImplCopyWith<$Res> {
  __$$DataProfileImplCopyWithImpl(
      _$DataProfileImpl _value, $Res Function(_$DataProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? nip = freezed,
    Object? nik = freezed,
    Object? email = freezed,
    Object? departmentId = freezed,
    Object? imageUrl = freezed,
    Object? placebirth = freezed,
    Object? maritalStatus = freezed,
    Object? religion = freezed,
    Object? bloodType = freezed,
    Object? citizenAddress = freezed,
    Object? residentialAddress = freezed,
    Object? gender = freezed,
    Object? birthdate = freezed,
    Object? deviceId = freezed,
    Object? userAccount = freezed,
    Object? position = freezed,
  }) {
    return _then(_$DataProfileImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      nip: freezed == nip
          ? _value.nip
          : nip // ignore: cast_nullable_to_non_nullable
              as String?,
      nik: freezed == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      departmentId: freezed == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      placebirth: freezed == placebirth
          ? _value.placebirth
          : placebirth // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      religion: freezed == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as String?,
      bloodType: freezed == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String?,
      citizenAddress: freezed == citizenAddress
          ? _value.citizenAddress
          : citizenAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      residentialAddress: freezed == residentialAddress
          ? _value.residentialAddress
          : residentialAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      userAccount: freezed == userAccount
          ? _value.userAccount
          : userAccount // ignore: cast_nullable_to_non_nullable
              as UserAccount?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataProfileImpl implements _DataProfile {
  const _$DataProfileImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "firstname") this.firstname,
      @JsonKey(name: "lastname") this.lastname,
      @JsonKey(name: "nip") this.nip,
      @JsonKey(name: "nik") this.nik,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "departmentId") this.departmentId,
      @JsonKey(name: "imageUrl") this.imageUrl,
      @JsonKey(name: "placebirth") this.placebirth,
      @JsonKey(name: "maritalStatus") this.maritalStatus,
      @JsonKey(name: "religion") this.religion,
      @JsonKey(name: "bloodType") this.bloodType,
      @JsonKey(name: "citizenAddress") this.citizenAddress,
      @JsonKey(name: "residentialAddress") this.residentialAddress,
      @JsonKey(name: "gender") this.gender,
      @JsonKey(name: "birthdate") this.birthdate,
      @JsonKey(name: "deviceId") this.deviceId,
      @JsonKey(name: "user_account") this.userAccount,
      @JsonKey(name: "position") this.position});

  factory _$DataProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataProfileImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "firstname")
  final String? firstname;
  @override
  @JsonKey(name: "lastname")
  final String? lastname;
  @override
  @JsonKey(name: "nip")
  final String? nip;
  @override
  @JsonKey(name: "nik")
  final String? nik;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "departmentId")
  final String? departmentId;
  @override
  @JsonKey(name: "imageUrl")
  final String? imageUrl;
  @override
  @JsonKey(name: "placebirth")
  final String? placebirth;
  @override
  @JsonKey(name: "maritalStatus")
  final String? maritalStatus;
  @override
  @JsonKey(name: "religion")
  final String? religion;
  @override
  @JsonKey(name: "bloodType")
  final String? bloodType;
  @override
  @JsonKey(name: "citizenAddress")
  final String? citizenAddress;
  @override
  @JsonKey(name: "residentialAddress")
  final String? residentialAddress;
  @override
  @JsonKey(name: "gender")
  final String? gender;
  @override
  @JsonKey(name: "birthdate")
  final String? birthdate;
  @override
  @JsonKey(name: "deviceId")
  final String? deviceId;
  @override
  @JsonKey(name: "user_account")
  final UserAccount? userAccount;
  @override
  @JsonKey(name: "position")
  final Position? position;

  @override
  String toString() {
    return 'DataProfile(id: $id, firstname: $firstname, lastname: $lastname, nip: $nip, nik: $nik, email: $email, departmentId: $departmentId, imageUrl: $imageUrl, placebirth: $placebirth, maritalStatus: $maritalStatus, religion: $religion, bloodType: $bloodType, citizenAddress: $citizenAddress, residentialAddress: $residentialAddress, gender: $gender, birthdate: $birthdate, deviceId: $deviceId, userAccount: $userAccount, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.nip, nip) || other.nip == nip) &&
            (identical(other.nik, nik) || other.nik == nik) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.placebirth, placebirth) ||
                other.placebirth == placebirth) &&
            (identical(other.maritalStatus, maritalStatus) ||
                other.maritalStatus == maritalStatus) &&
            (identical(other.religion, religion) ||
                other.religion == religion) &&
            (identical(other.bloodType, bloodType) ||
                other.bloodType == bloodType) &&
            (identical(other.citizenAddress, citizenAddress) ||
                other.citizenAddress == citizenAddress) &&
            (identical(other.residentialAddress, residentialAddress) ||
                other.residentialAddress == residentialAddress) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.userAccount, userAccount) ||
                other.userAccount == userAccount) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        firstname,
        lastname,
        nip,
        nik,
        email,
        departmentId,
        imageUrl,
        placebirth,
        maritalStatus,
        religion,
        bloodType,
        citizenAddress,
        residentialAddress,
        gender,
        birthdate,
        deviceId,
        userAccount,
        position
      ]);

  /// Create a copy of DataProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataProfileImplCopyWith<_$DataProfileImpl> get copyWith =>
      __$$DataProfileImplCopyWithImpl<_$DataProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataProfileImplToJson(
      this,
    );
  }
}

abstract class _DataProfile implements DataProfile {
  const factory _DataProfile(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "firstname") final String? firstname,
      @JsonKey(name: "lastname") final String? lastname,
      @JsonKey(name: "nip") final String? nip,
      @JsonKey(name: "nik") final String? nik,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "departmentId") final String? departmentId,
      @JsonKey(name: "imageUrl") final String? imageUrl,
      @JsonKey(name: "placebirth") final String? placebirth,
      @JsonKey(name: "maritalStatus") final String? maritalStatus,
      @JsonKey(name: "religion") final String? religion,
      @JsonKey(name: "bloodType") final String? bloodType,
      @JsonKey(name: "citizenAddress") final String? citizenAddress,
      @JsonKey(name: "residentialAddress") final String? residentialAddress,
      @JsonKey(name: "gender") final String? gender,
      @JsonKey(name: "birthdate") final String? birthdate,
      @JsonKey(name: "deviceId") final String? deviceId,
      @JsonKey(name: "user_account") final UserAccount? userAccount,
      @JsonKey(name: "position") final Position? position}) = _$DataProfileImpl;

  factory _DataProfile.fromJson(Map<String, dynamic> json) =
      _$DataProfileImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "firstname")
  String? get firstname;
  @override
  @JsonKey(name: "lastname")
  String? get lastname;
  @override
  @JsonKey(name: "nip")
  String? get nip;
  @override
  @JsonKey(name: "nik")
  String? get nik;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "departmentId")
  String? get departmentId;
  @override
  @JsonKey(name: "imageUrl")
  String? get imageUrl;
  @override
  @JsonKey(name: "placebirth")
  String? get placebirth;
  @override
  @JsonKey(name: "maritalStatus")
  String? get maritalStatus;
  @override
  @JsonKey(name: "religion")
  String? get religion;
  @override
  @JsonKey(name: "bloodType")
  String? get bloodType;
  @override
  @JsonKey(name: "citizenAddress")
  String? get citizenAddress;
  @override
  @JsonKey(name: "residentialAddress")
  String? get residentialAddress;
  @override
  @JsonKey(name: "gender")
  String? get gender;
  @override
  @JsonKey(name: "birthdate")
  String? get birthdate;
  @override
  @JsonKey(name: "deviceId")
  String? get deviceId;
  @override
  @JsonKey(name: "user_account")
  UserAccount? get userAccount;
  @override
  @JsonKey(name: "position")
  Position? get position;

  /// Create a copy of DataProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataProfileImplCopyWith<_$DataProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserAccount _$UserAccountFromJson(Map<String, dynamic> json) {
  return _UserAccount.fromJson(json);
}

/// @nodoc
mixin _$UserAccount {
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "profilePic")
  String? get profilePic => throw _privateConstructorUsedError;

  /// Serializes this UserAccount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAccountCopyWith<UserAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAccountCopyWith<$Res> {
  factory $UserAccountCopyWith(
          UserAccount value, $Res Function(UserAccount) then) =
      _$UserAccountCopyWithImpl<$Res, UserAccount>;
  @useResult
  $Res call(
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "profilePic") String? profilePic});
}

/// @nodoc
class _$UserAccountCopyWithImpl<$Res, $Val extends UserAccount>
    implements $UserAccountCopyWith<$Res> {
  _$UserAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? profilePic = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAccountImplCopyWith<$Res>
    implements $UserAccountCopyWith<$Res> {
  factory _$$UserAccountImplCopyWith(
          _$UserAccountImpl value, $Res Function(_$UserAccountImpl) then) =
      __$$UserAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "profilePic") String? profilePic});
}

/// @nodoc
class __$$UserAccountImplCopyWithImpl<$Res>
    extends _$UserAccountCopyWithImpl<$Res, _$UserAccountImpl>
    implements _$$UserAccountImplCopyWith<$Res> {
  __$$UserAccountImplCopyWithImpl(
      _$UserAccountImpl _value, $Res Function(_$UserAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? profilePic = freezed,
  }) {
    return _then(_$UserAccountImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAccountImpl implements _UserAccount {
  const _$UserAccountImpl(
      {@JsonKey(name: "username") this.username,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "profilePic") this.profilePic});

  factory _$UserAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAccountImplFromJson(json);

  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "profilePic")
  final String? profilePic;

  @override
  String toString() {
    return 'UserAccount(username: $username, email: $email, profilePic: $profilePic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAccountImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, email, profilePic);

  /// Create a copy of UserAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAccountImplCopyWith<_$UserAccountImpl> get copyWith =>
      __$$UserAccountImplCopyWithImpl<_$UserAccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAccountImplToJson(
      this,
    );
  }
}

abstract class _UserAccount implements UserAccount {
  const factory _UserAccount(
          {@JsonKey(name: "username") final String? username,
          @JsonKey(name: "email") final String? email,
          @JsonKey(name: "profilePic") final String? profilePic}) =
      _$UserAccountImpl;

  factory _UserAccount.fromJson(Map<String, dynamic> json) =
      _$UserAccountImpl.fromJson;

  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "profilePic")
  String? get profilePic;

  /// Create a copy of UserAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAccountImplCopyWith<_$UserAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Position _$PositionFromJson(Map<String, dynamic> json) {
  return _Position.fromJson(json);
}

/// @nodoc
mixin _$Position {
  @JsonKey(name: "positionName")
  String? get positionName => throw _privateConstructorUsedError;

  /// Serializes this Position to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositionCopyWith<Position> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) then) =
      _$PositionCopyWithImpl<$Res, Position>;
  @useResult
  $Res call({@JsonKey(name: "positionName") String? positionName});
}

/// @nodoc
class _$PositionCopyWithImpl<$Res, $Val extends Position>
    implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positionName = freezed,
  }) {
    return _then(_value.copyWith(
      positionName: freezed == positionName
          ? _value.positionName
          : positionName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PositionImplCopyWith<$Res>
    implements $PositionCopyWith<$Res> {
  factory _$$PositionImplCopyWith(
          _$PositionImpl value, $Res Function(_$PositionImpl) then) =
      __$$PositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "positionName") String? positionName});
}

/// @nodoc
class __$$PositionImplCopyWithImpl<$Res>
    extends _$PositionCopyWithImpl<$Res, _$PositionImpl>
    implements _$$PositionImplCopyWith<$Res> {
  __$$PositionImplCopyWithImpl(
      _$PositionImpl _value, $Res Function(_$PositionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positionName = freezed,
  }) {
    return _then(_$PositionImpl(
      positionName: freezed == positionName
          ? _value.positionName
          : positionName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PositionImpl implements _Position {
  const _$PositionImpl({@JsonKey(name: "positionName") this.positionName});

  factory _$PositionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositionImplFromJson(json);

  @override
  @JsonKey(name: "positionName")
  final String? positionName;

  @override
  String toString() {
    return 'Position(positionName: $positionName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionImpl &&
            (identical(other.positionName, positionName) ||
                other.positionName == positionName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, positionName);

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionImplCopyWith<_$PositionImpl> get copyWith =>
      __$$PositionImplCopyWithImpl<_$PositionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionImplToJson(
      this,
    );
  }
}

abstract class _Position implements Position {
  const factory _Position(
          {@JsonKey(name: "positionName") final String? positionName}) =
      _$PositionImpl;

  factory _Position.fromJson(Map<String, dynamic> json) =
      _$PositionImpl.fromJson;

  @override
  @JsonKey(name: "positionName")
  String? get positionName;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionImplCopyWith<_$PositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
