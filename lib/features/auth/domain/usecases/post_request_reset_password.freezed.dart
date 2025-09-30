// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_request_reset_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestResetPasswordParams _$RequestResetPasswordParamsFromJson(
    Map<String, dynamic> json) {
  return _RequestResetPasswordParams.fromJson(json);
}

/// @nodoc
mixin _$RequestResetPasswordParams {
  String get email => throw _privateConstructorUsedError;

  /// Serializes this RequestResetPasswordParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestResetPasswordParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestResetPasswordParamsCopyWith<RequestResetPasswordParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestResetPasswordParamsCopyWith<$Res> {
  factory $RequestResetPasswordParamsCopyWith(RequestResetPasswordParams value,
          $Res Function(RequestResetPasswordParams) then) =
      _$RequestResetPasswordParamsCopyWithImpl<$Res,
          RequestResetPasswordParams>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$RequestResetPasswordParamsCopyWithImpl<$Res,
        $Val extends RequestResetPasswordParams>
    implements $RequestResetPasswordParamsCopyWith<$Res> {
  _$RequestResetPasswordParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestResetPasswordParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestResetPasswordParamsImplCopyWith<$Res>
    implements $RequestResetPasswordParamsCopyWith<$Res> {
  factory _$$RequestResetPasswordParamsImplCopyWith(
          _$RequestResetPasswordParamsImpl value,
          $Res Function(_$RequestResetPasswordParamsImpl) then) =
      __$$RequestResetPasswordParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$RequestResetPasswordParamsImplCopyWithImpl<$Res>
    extends _$RequestResetPasswordParamsCopyWithImpl<$Res,
        _$RequestResetPasswordParamsImpl>
    implements _$$RequestResetPasswordParamsImplCopyWith<$Res> {
  __$$RequestResetPasswordParamsImplCopyWithImpl(
      _$RequestResetPasswordParamsImpl _value,
      $Res Function(_$RequestResetPasswordParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestResetPasswordParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$RequestResetPasswordParamsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestResetPasswordParamsImpl implements _RequestResetPasswordParams {
  const _$RequestResetPasswordParamsImpl({this.email = ""});

  factory _$RequestResetPasswordParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestResetPasswordParamsImplFromJson(json);

  @override
  @JsonKey()
  final String email;

  @override
  String toString() {
    return 'RequestResetPasswordParams(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestResetPasswordParamsImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of RequestResetPasswordParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestResetPasswordParamsImplCopyWith<_$RequestResetPasswordParamsImpl>
      get copyWith => __$$RequestResetPasswordParamsImplCopyWithImpl<
          _$RequestResetPasswordParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestResetPasswordParamsImplToJson(
      this,
    );
  }
}

abstract class _RequestResetPasswordParams
    implements RequestResetPasswordParams {
  const factory _RequestResetPasswordParams({final String email}) =
      _$RequestResetPasswordParamsImpl;

  factory _RequestResetPasswordParams.fromJson(Map<String, dynamic> json) =
      _$RequestResetPasswordParamsImpl.fromJson;

  @override
  String get email;

  /// Create a copy of RequestResetPasswordParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestResetPasswordParamsImplCopyWith<_$RequestResetPasswordParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
