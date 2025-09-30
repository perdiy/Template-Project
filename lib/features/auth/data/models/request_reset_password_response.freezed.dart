// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_reset_password_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestResetPasswordResponse _$RequestResetPasswordResponseFromJson(
    Map<String, dynamic> json) {
  return _RequestResetPasswordResponse.fromJson(json);
}

/// @nodoc
mixin _$RequestResetPasswordResponse {
  @JsonKey(name: "data")
  DataRequestResetPassword? get data => throw _privateConstructorUsedError;

  /// Serializes this RequestResetPasswordResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestResetPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestResetPasswordResponseCopyWith<RequestResetPasswordResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestResetPasswordResponseCopyWith<$Res> {
  factory $RequestResetPasswordResponseCopyWith(
          RequestResetPasswordResponse value,
          $Res Function(RequestResetPasswordResponse) then) =
      _$RequestResetPasswordResponseCopyWithImpl<$Res,
          RequestResetPasswordResponse>;
  @useResult
  $Res call({@JsonKey(name: "data") DataRequestResetPassword? data});

  $DataRequestResetPasswordCopyWith<$Res>? get data;
}

/// @nodoc
class _$RequestResetPasswordResponseCopyWithImpl<$Res,
        $Val extends RequestResetPasswordResponse>
    implements $RequestResetPasswordResponseCopyWith<$Res> {
  _$RequestResetPasswordResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestResetPasswordResponse
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
              as DataRequestResetPassword?,
    ) as $Val);
  }

  /// Create a copy of RequestResetPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataRequestResetPasswordCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataRequestResetPasswordCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RequestResetPasswordResponseImplCopyWith<$Res>
    implements $RequestResetPasswordResponseCopyWith<$Res> {
  factory _$$RequestResetPasswordResponseImplCopyWith(
          _$RequestResetPasswordResponseImpl value,
          $Res Function(_$RequestResetPasswordResponseImpl) then) =
      __$$RequestResetPasswordResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") DataRequestResetPassword? data});

  @override
  $DataRequestResetPasswordCopyWith<$Res>? get data;
}

/// @nodoc
class __$$RequestResetPasswordResponseImplCopyWithImpl<$Res>
    extends _$RequestResetPasswordResponseCopyWithImpl<$Res,
        _$RequestResetPasswordResponseImpl>
    implements _$$RequestResetPasswordResponseImplCopyWith<$Res> {
  __$$RequestResetPasswordResponseImplCopyWithImpl(
      _$RequestResetPasswordResponseImpl _value,
      $Res Function(_$RequestResetPasswordResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestResetPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$RequestResetPasswordResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataRequestResetPassword?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestResetPasswordResponseImpl extends _RequestResetPasswordResponse {
  const _$RequestResetPasswordResponseImpl({@JsonKey(name: "data") this.data})
      : super._();

  factory _$RequestResetPasswordResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestResetPasswordResponseImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final DataRequestResetPassword? data;

  @override
  String toString() {
    return 'RequestResetPasswordResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestResetPasswordResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of RequestResetPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestResetPasswordResponseImplCopyWith<
          _$RequestResetPasswordResponseImpl>
      get copyWith => __$$RequestResetPasswordResponseImplCopyWithImpl<
          _$RequestResetPasswordResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestResetPasswordResponseImplToJson(
      this,
    );
  }
}

abstract class _RequestResetPasswordResponse
    extends RequestResetPasswordResponse {
  const factory _RequestResetPasswordResponse(
          {@JsonKey(name: "data") final DataRequestResetPassword? data}) =
      _$RequestResetPasswordResponseImpl;
  const _RequestResetPasswordResponse._() : super._();

  factory _RequestResetPasswordResponse.fromJson(Map<String, dynamic> json) =
      _$RequestResetPasswordResponseImpl.fromJson;

  @override
  @JsonKey(name: "data")
  DataRequestResetPassword? get data;

  /// Create a copy of RequestResetPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestResetPasswordResponseImplCopyWith<
          _$RequestResetPasswordResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataRequestResetPassword _$DataRequestResetPasswordFromJson(
    Map<String, dynamic> json) {
  return _DataRequestResetPassword.fromJson(json);
}

/// @nodoc
mixin _$DataRequestResetPassword {
  @JsonKey(name: "expiredAt")
  String? get expiredAt => throw _privateConstructorUsedError;

  /// Serializes this DataRequestResetPassword to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataRequestResetPassword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataRequestResetPasswordCopyWith<DataRequestResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataRequestResetPasswordCopyWith<$Res> {
  factory $DataRequestResetPasswordCopyWith(DataRequestResetPassword value,
          $Res Function(DataRequestResetPassword) then) =
      _$DataRequestResetPasswordCopyWithImpl<$Res, DataRequestResetPassword>;
  @useResult
  $Res call({@JsonKey(name: "expiredAt") String? expiredAt});
}

/// @nodoc
class _$DataRequestResetPasswordCopyWithImpl<$Res,
        $Val extends DataRequestResetPassword>
    implements $DataRequestResetPasswordCopyWith<$Res> {
  _$DataRequestResetPasswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataRequestResetPassword
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expiredAt = freezed,
  }) {
    return _then(_value.copyWith(
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataRequestResetPasswordImplCopyWith<$Res>
    implements $DataRequestResetPasswordCopyWith<$Res> {
  factory _$$DataRequestResetPasswordImplCopyWith(
          _$DataRequestResetPasswordImpl value,
          $Res Function(_$DataRequestResetPasswordImpl) then) =
      __$$DataRequestResetPasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "expiredAt") String? expiredAt});
}

/// @nodoc
class __$$DataRequestResetPasswordImplCopyWithImpl<$Res>
    extends _$DataRequestResetPasswordCopyWithImpl<$Res,
        _$DataRequestResetPasswordImpl>
    implements _$$DataRequestResetPasswordImplCopyWith<$Res> {
  __$$DataRequestResetPasswordImplCopyWithImpl(
      _$DataRequestResetPasswordImpl _value,
      $Res Function(_$DataRequestResetPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataRequestResetPassword
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expiredAt = freezed,
  }) {
    return _then(_$DataRequestResetPasswordImpl(
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataRequestResetPasswordImpl implements _DataRequestResetPassword {
  const _$DataRequestResetPasswordImpl(
      {@JsonKey(name: "expiredAt") this.expiredAt});

  factory _$DataRequestResetPasswordImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataRequestResetPasswordImplFromJson(json);

  @override
  @JsonKey(name: "expiredAt")
  final String? expiredAt;

  @override
  String toString() {
    return 'DataRequestResetPassword(expiredAt: $expiredAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataRequestResetPasswordImpl &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, expiredAt);

  /// Create a copy of DataRequestResetPassword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataRequestResetPasswordImplCopyWith<_$DataRequestResetPasswordImpl>
      get copyWith => __$$DataRequestResetPasswordImplCopyWithImpl<
          _$DataRequestResetPasswordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataRequestResetPasswordImplToJson(
      this,
    );
  }
}

abstract class _DataRequestResetPassword implements DataRequestResetPassword {
  const factory _DataRequestResetPassword(
          {@JsonKey(name: "expiredAt") final String? expiredAt}) =
      _$DataRequestResetPasswordImpl;

  factory _DataRequestResetPassword.fromJson(Map<String, dynamic> json) =
      _$DataRequestResetPasswordImpl.fromJson;

  @override
  @JsonKey(name: "expiredAt")
  String? get expiredAt;

  /// Create a copy of DataRequestResetPassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataRequestResetPasswordImplCopyWith<_$DataRequestResetPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}
