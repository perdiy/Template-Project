// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_picture_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangePictureResponse _$ChangePictureResponseFromJson(
    Map<String, dynamic> json) {
  return _ChangePictureResponse.fromJson(json);
}

/// @nodoc
mixin _$ChangePictureResponse {
  @JsonKey(name: "data")
  DataChangeProfile? get data => throw _privateConstructorUsedError;

  /// Serializes this ChangePictureResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangePictureResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangePictureResponseCopyWith<ChangePictureResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePictureResponseCopyWith<$Res> {
  factory $ChangePictureResponseCopyWith(ChangePictureResponse value,
          $Res Function(ChangePictureResponse) then) =
      _$ChangePictureResponseCopyWithImpl<$Res, ChangePictureResponse>;
  @useResult
  $Res call({@JsonKey(name: "data") DataChangeProfile? data});

  $DataChangeProfileCopyWith<$Res>? get data;
}

/// @nodoc
class _$ChangePictureResponseCopyWithImpl<$Res,
        $Val extends ChangePictureResponse>
    implements $ChangePictureResponseCopyWith<$Res> {
  _$ChangePictureResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangePictureResponse
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
              as DataChangeProfile?,
    ) as $Val);
  }

  /// Create a copy of ChangePictureResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataChangeProfileCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataChangeProfileCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChangePictureResponseImplCopyWith<$Res>
    implements $ChangePictureResponseCopyWith<$Res> {
  factory _$$ChangePictureResponseImplCopyWith(
          _$ChangePictureResponseImpl value,
          $Res Function(_$ChangePictureResponseImpl) then) =
      __$$ChangePictureResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") DataChangeProfile? data});

  @override
  $DataChangeProfileCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ChangePictureResponseImplCopyWithImpl<$Res>
    extends _$ChangePictureResponseCopyWithImpl<$Res,
        _$ChangePictureResponseImpl>
    implements _$$ChangePictureResponseImplCopyWith<$Res> {
  __$$ChangePictureResponseImplCopyWithImpl(_$ChangePictureResponseImpl _value,
      $Res Function(_$ChangePictureResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangePictureResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ChangePictureResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataChangeProfile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePictureResponseImpl extends _ChangePictureResponse {
  const _$ChangePictureResponseImpl({@JsonKey(name: "data") this.data})
      : super._();

  factory _$ChangePictureResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePictureResponseImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final DataChangeProfile? data;

  @override
  String toString() {
    return 'ChangePictureResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePictureResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of ChangePictureResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePictureResponseImplCopyWith<_$ChangePictureResponseImpl>
      get copyWith => __$$ChangePictureResponseImplCopyWithImpl<
          _$ChangePictureResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePictureResponseImplToJson(
      this,
    );
  }
}

abstract class _ChangePictureResponse extends ChangePictureResponse {
  const factory _ChangePictureResponse(
          {@JsonKey(name: "data") final DataChangeProfile? data}) =
      _$ChangePictureResponseImpl;
  const _ChangePictureResponse._() : super._();

  factory _ChangePictureResponse.fromJson(Map<String, dynamic> json) =
      _$ChangePictureResponseImpl.fromJson;

  @override
  @JsonKey(name: "data")
  DataChangeProfile? get data;

  /// Create a copy of ChangePictureResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePictureResponseImplCopyWith<_$ChangePictureResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataChangeProfile _$DataChangeProfileFromJson(Map<String, dynamic> json) {
  return _DataChangeProfile.fromJson(json);
}

/// @nodoc
mixin _$DataChangeProfile {
  @JsonKey(name: "profilePic")
  String? get profilePic => throw _privateConstructorUsedError;

  /// Serializes this DataChangeProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataChangeProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataChangeProfileCopyWith<DataChangeProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataChangeProfileCopyWith<$Res> {
  factory $DataChangeProfileCopyWith(
          DataChangeProfile value, $Res Function(DataChangeProfile) then) =
      _$DataChangeProfileCopyWithImpl<$Res, DataChangeProfile>;
  @useResult
  $Res call({@JsonKey(name: "profilePic") String? profilePic});
}

/// @nodoc
class _$DataChangeProfileCopyWithImpl<$Res, $Val extends DataChangeProfile>
    implements $DataChangeProfileCopyWith<$Res> {
  _$DataChangeProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataChangeProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profilePic = freezed,
  }) {
    return _then(_value.copyWith(
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataChangeProfileImplCopyWith<$Res>
    implements $DataChangeProfileCopyWith<$Res> {
  factory _$$DataChangeProfileImplCopyWith(_$DataChangeProfileImpl value,
          $Res Function(_$DataChangeProfileImpl) then) =
      __$$DataChangeProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "profilePic") String? profilePic});
}

/// @nodoc
class __$$DataChangeProfileImplCopyWithImpl<$Res>
    extends _$DataChangeProfileCopyWithImpl<$Res, _$DataChangeProfileImpl>
    implements _$$DataChangeProfileImplCopyWith<$Res> {
  __$$DataChangeProfileImplCopyWithImpl(_$DataChangeProfileImpl _value,
      $Res Function(_$DataChangeProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataChangeProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profilePic = freezed,
  }) {
    return _then(_$DataChangeProfileImpl(
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataChangeProfileImpl implements _DataChangeProfile {
  const _$DataChangeProfileImpl({@JsonKey(name: "profilePic") this.profilePic});

  factory _$DataChangeProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataChangeProfileImplFromJson(json);

  @override
  @JsonKey(name: "profilePic")
  final String? profilePic;

  @override
  String toString() {
    return 'DataChangeProfile(profilePic: $profilePic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataChangeProfileImpl &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, profilePic);

  /// Create a copy of DataChangeProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataChangeProfileImplCopyWith<_$DataChangeProfileImpl> get copyWith =>
      __$$DataChangeProfileImplCopyWithImpl<_$DataChangeProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataChangeProfileImplToJson(
      this,
    );
  }
}

abstract class _DataChangeProfile implements DataChangeProfile {
  const factory _DataChangeProfile(
          {@JsonKey(name: "profilePic") final String? profilePic}) =
      _$DataChangeProfileImpl;

  factory _DataChangeProfile.fromJson(Map<String, dynamic> json) =
      _$DataChangeProfileImpl.fromJson;

  @override
  @JsonKey(name: "profilePic")
  String? get profilePic;

  /// Create a copy of DataChangeProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataChangeProfileImplCopyWith<_$DataChangeProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
