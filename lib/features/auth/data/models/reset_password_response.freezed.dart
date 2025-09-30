// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResetPasswordResponse _$ResetPasswordResponseFromJson(
    Map<String, dynamic> json) {
  return _ResetPasswordResponse.fromJson(json);
}

/// @nodoc
mixin _$ResetPasswordResponse {
  String? get timestamp => throw _privateConstructorUsedError;

  /// Serializes this ResetPasswordResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResetPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResetPasswordResponseCopyWith<ResetPasswordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordResponseCopyWith<$Res> {
  factory $ResetPasswordResponseCopyWith(ResetPasswordResponse value,
          $Res Function(ResetPasswordResponse) then) =
      _$ResetPasswordResponseCopyWithImpl<$Res, ResetPasswordResponse>;
  @useResult
  $Res call({String? timestamp});
}

/// @nodoc
class _$ResetPasswordResponseCopyWithImpl<$Res,
        $Val extends ResetPasswordResponse>
    implements $ResetPasswordResponseCopyWith<$Res> {
  _$ResetPasswordResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResetPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetPasswordResponseImplCopyWith<$Res>
    implements $ResetPasswordResponseCopyWith<$Res> {
  factory _$$ResetPasswordResponseImplCopyWith(
          _$ResetPasswordResponseImpl value,
          $Res Function(_$ResetPasswordResponseImpl) then) =
      __$$ResetPasswordResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? timestamp});
}

/// @nodoc
class __$$ResetPasswordResponseImplCopyWithImpl<$Res>
    extends _$ResetPasswordResponseCopyWithImpl<$Res,
        _$ResetPasswordResponseImpl>
    implements _$$ResetPasswordResponseImplCopyWith<$Res> {
  __$$ResetPasswordResponseImplCopyWithImpl(_$ResetPasswordResponseImpl _value,
      $Res Function(_$ResetPasswordResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
  }) {
    return _then(_$ResetPasswordResponseImpl(
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResetPasswordResponseImpl extends _ResetPasswordResponse {
  const _$ResetPasswordResponseImpl({this.timestamp}) : super._();

  factory _$ResetPasswordResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetPasswordResponseImplFromJson(json);

  @override
  final String? timestamp;

  @override
  String toString() {
    return 'ResetPasswordResponse(timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordResponseImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timestamp);

  /// Create a copy of ResetPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordResponseImplCopyWith<_$ResetPasswordResponseImpl>
      get copyWith => __$$ResetPasswordResponseImplCopyWithImpl<
          _$ResetPasswordResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetPasswordResponseImplToJson(
      this,
    );
  }
}

abstract class _ResetPasswordResponse extends ResetPasswordResponse {
  const factory _ResetPasswordResponse({final String? timestamp}) =
      _$ResetPasswordResponseImpl;
  const _ResetPasswordResponse._() : super._();

  factory _ResetPasswordResponse.fromJson(Map<String, dynamic> json) =
      _$ResetPasswordResponseImpl.fromJson;

  @override
  String? get timestamp;

  /// Create a copy of ResetPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordResponseImplCopyWith<_$ResetPasswordResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
