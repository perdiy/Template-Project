// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_picture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChangePicture {
  String? get profilePic => throw _privateConstructorUsedError;

  /// Create a copy of ChangePicture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangePictureCopyWith<ChangePicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePictureCopyWith<$Res> {
  factory $ChangePictureCopyWith(
          ChangePicture value, $Res Function(ChangePicture) then) =
      _$ChangePictureCopyWithImpl<$Res, ChangePicture>;
  @useResult
  $Res call({String? profilePic});
}

/// @nodoc
class _$ChangePictureCopyWithImpl<$Res, $Val extends ChangePicture>
    implements $ChangePictureCopyWith<$Res> {
  _$ChangePictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangePicture
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
abstract class _$$ChangePictureImplCopyWith<$Res>
    implements $ChangePictureCopyWith<$Res> {
  factory _$$ChangePictureImplCopyWith(
          _$ChangePictureImpl value, $Res Function(_$ChangePictureImpl) then) =
      __$$ChangePictureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? profilePic});
}

/// @nodoc
class __$$ChangePictureImplCopyWithImpl<$Res>
    extends _$ChangePictureCopyWithImpl<$Res, _$ChangePictureImpl>
    implements _$$ChangePictureImplCopyWith<$Res> {
  __$$ChangePictureImplCopyWithImpl(
      _$ChangePictureImpl _value, $Res Function(_$ChangePictureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangePicture
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profilePic = freezed,
  }) {
    return _then(_$ChangePictureImpl(
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangePictureImpl implements _ChangePicture {
  const _$ChangePictureImpl({this.profilePic});

  @override
  final String? profilePic;

  @override
  String toString() {
    return 'ChangePicture(profilePic: $profilePic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePictureImpl &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profilePic);

  /// Create a copy of ChangePicture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePictureImplCopyWith<_$ChangePictureImpl> get copyWith =>
      __$$ChangePictureImplCopyWithImpl<_$ChangePictureImpl>(this, _$identity);
}

abstract class _ChangePicture implements ChangePicture {
  const factory _ChangePicture({final String? profilePic}) =
      _$ChangePictureImpl;

  @override
  String? get profilePic;

  /// Create a copy of ChangePicture
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePictureImplCopyWith<_$ChangePictureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
