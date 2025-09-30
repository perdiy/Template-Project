// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_change_picture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangePictureParams _$ChangePictureParamsFromJson(Map<String, dynamic> json) {
  return _ChangePictureParams.fromJson(json);
}

/// @nodoc
mixin _$ChangePictureParams {
  String get imagePath => throw _privateConstructorUsedError;

  /// Serializes this ChangePictureParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangePictureParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangePictureParamsCopyWith<ChangePictureParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePictureParamsCopyWith<$Res> {
  factory $ChangePictureParamsCopyWith(
          ChangePictureParams value, $Res Function(ChangePictureParams) then) =
      _$ChangePictureParamsCopyWithImpl<$Res, ChangePictureParams>;
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class _$ChangePictureParamsCopyWithImpl<$Res, $Val extends ChangePictureParams>
    implements $ChangePictureParamsCopyWith<$Res> {
  _$ChangePictureParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangePictureParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
  }) {
    return _then(_value.copyWith(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePictureParamsImplCopyWith<$Res>
    implements $ChangePictureParamsCopyWith<$Res> {
  factory _$$ChangePictureParamsImplCopyWith(_$ChangePictureParamsImpl value,
          $Res Function(_$ChangePictureParamsImpl) then) =
      __$$ChangePictureParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class __$$ChangePictureParamsImplCopyWithImpl<$Res>
    extends _$ChangePictureParamsCopyWithImpl<$Res, _$ChangePictureParamsImpl>
    implements _$$ChangePictureParamsImplCopyWith<$Res> {
  __$$ChangePictureParamsImplCopyWithImpl(_$ChangePictureParamsImpl _value,
      $Res Function(_$ChangePictureParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangePictureParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
  }) {
    return _then(_$ChangePictureParamsImpl(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePictureParamsImpl implements _ChangePictureParams {
  const _$ChangePictureParamsImpl({this.imagePath = ""});

  factory _$ChangePictureParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePictureParamsImplFromJson(json);

  @override
  @JsonKey()
  final String imagePath;

  @override
  String toString() {
    return 'ChangePictureParams(imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePictureParamsImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imagePath);

  /// Create a copy of ChangePictureParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePictureParamsImplCopyWith<_$ChangePictureParamsImpl> get copyWith =>
      __$$ChangePictureParamsImplCopyWithImpl<_$ChangePictureParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePictureParamsImplToJson(
      this,
    );
  }
}

abstract class _ChangePictureParams implements ChangePictureParams {
  const factory _ChangePictureParams({final String imagePath}) =
      _$ChangePictureParamsImpl;

  factory _ChangePictureParams.fromJson(Map<String, dynamic> json) =
      _$ChangePictureParamsImpl.fromJson;

  @override
  String get imagePath;

  /// Create a copy of ChangePictureParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePictureParamsImplCopyWith<_$ChangePictureParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
