// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_reset_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestResetPassword {
  String? get expiredAt => throw _privateConstructorUsedError;

  /// Create a copy of RequestResetPassword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestResetPasswordCopyWith<RequestResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestResetPasswordCopyWith<$Res> {
  factory $RequestResetPasswordCopyWith(RequestResetPassword value,
          $Res Function(RequestResetPassword) then) =
      _$RequestResetPasswordCopyWithImpl<$Res, RequestResetPassword>;
  @useResult
  $Res call({String? expiredAt});
}

/// @nodoc
class _$RequestResetPasswordCopyWithImpl<$Res,
        $Val extends RequestResetPassword>
    implements $RequestResetPasswordCopyWith<$Res> {
  _$RequestResetPasswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestResetPassword
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
abstract class _$$RequestResetPasswordImplCopyWith<$Res>
    implements $RequestResetPasswordCopyWith<$Res> {
  factory _$$RequestResetPasswordImplCopyWith(_$RequestResetPasswordImpl value,
          $Res Function(_$RequestResetPasswordImpl) then) =
      __$$RequestResetPasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? expiredAt});
}

/// @nodoc
class __$$RequestResetPasswordImplCopyWithImpl<$Res>
    extends _$RequestResetPasswordCopyWithImpl<$Res, _$RequestResetPasswordImpl>
    implements _$$RequestResetPasswordImplCopyWith<$Res> {
  __$$RequestResetPasswordImplCopyWithImpl(_$RequestResetPasswordImpl _value,
      $Res Function(_$RequestResetPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestResetPassword
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expiredAt = freezed,
  }) {
    return _then(_$RequestResetPasswordImpl(
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RequestResetPasswordImpl implements _RequestResetPassword {
  const _$RequestResetPasswordImpl({this.expiredAt});

  @override
  final String? expiredAt;

  @override
  String toString() {
    return 'RequestResetPassword(expiredAt: $expiredAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestResetPasswordImpl &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expiredAt);

  /// Create a copy of RequestResetPassword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestResetPasswordImplCopyWith<_$RequestResetPasswordImpl>
      get copyWith =>
          __$$RequestResetPasswordImplCopyWithImpl<_$RequestResetPasswordImpl>(
              this, _$identity);
}

abstract class _RequestResetPassword implements RequestResetPassword {
  const factory _RequestResetPassword({final String? expiredAt}) =
      _$RequestResetPasswordImpl;

  @override
  String? get expiredAt;

  /// Create a copy of RequestResetPassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestResetPasswordImplCopyWith<_$RequestResetPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}
