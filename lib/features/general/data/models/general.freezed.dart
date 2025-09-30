// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$General {
  String? get userAccountId => throw _privateConstructorUsedError;

  /// Create a copy of General
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeneralCopyWith<General> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralCopyWith<$Res> {
  factory $GeneralCopyWith(General value, $Res Function(General) then) =
      _$GeneralCopyWithImpl<$Res, General>;
  @useResult
  $Res call({String? userAccountId});
}

/// @nodoc
class _$GeneralCopyWithImpl<$Res, $Val extends General>
    implements $GeneralCopyWith<$Res> {
  _$GeneralCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of General
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAccountId = freezed,
  }) {
    return _then(_value.copyWith(
      userAccountId: freezed == userAccountId
          ? _value.userAccountId
          : userAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeneralImplCopyWith<$Res> implements $GeneralCopyWith<$Res> {
  factory _$$GeneralImplCopyWith(
          _$GeneralImpl value, $Res Function(_$GeneralImpl) then) =
      __$$GeneralImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userAccountId});
}

/// @nodoc
class __$$GeneralImplCopyWithImpl<$Res>
    extends _$GeneralCopyWithImpl<$Res, _$GeneralImpl>
    implements _$$GeneralImplCopyWith<$Res> {
  __$$GeneralImplCopyWithImpl(
      _$GeneralImpl _value, $Res Function(_$GeneralImpl) _then)
      : super(_value, _then);

  /// Create a copy of General
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAccountId = freezed,
  }) {
    return _then(_$GeneralImpl(
      userAccountId: freezed == userAccountId
          ? _value.userAccountId
          : userAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GeneralImpl implements _General {
  const _$GeneralImpl({this.userAccountId});

  @override
  final String? userAccountId;

  @override
  String toString() {
    return 'General(userAccountId: $userAccountId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralImpl &&
            (identical(other.userAccountId, userAccountId) ||
                other.userAccountId == userAccountId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userAccountId);

  /// Create a copy of General
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralImplCopyWith<_$GeneralImpl> get copyWith =>
      __$$GeneralImplCopyWithImpl<_$GeneralImpl>(this, _$identity);
}

abstract class _General implements General {
  const factory _General({final String? userAccountId}) = _$GeneralImpl;

  @override
  String? get userAccountId;

  /// Create a copy of General
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeneralImplCopyWith<_$GeneralImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
