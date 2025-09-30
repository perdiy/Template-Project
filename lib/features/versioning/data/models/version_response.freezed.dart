// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'version_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VersionResponse _$VersionResponseFromJson(Map<String, dynamic> json) {
  return _VersionResponse.fromJson(json);
}

/// @nodoc
mixin _$VersionResponse {
  @JsonKey(name: "data")
  DataVersion? get data => throw _privateConstructorUsedError;

  /// Serializes this VersionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VersionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VersionResponseCopyWith<VersionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionResponseCopyWith<$Res> {
  factory $VersionResponseCopyWith(
          VersionResponse value, $Res Function(VersionResponse) then) =
      _$VersionResponseCopyWithImpl<$Res, VersionResponse>;
  @useResult
  $Res call({@JsonKey(name: "data") DataVersion? data});

  $DataVersionCopyWith<$Res>? get data;
}

/// @nodoc
class _$VersionResponseCopyWithImpl<$Res, $Val extends VersionResponse>
    implements $VersionResponseCopyWith<$Res> {
  _$VersionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VersionResponse
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
              as DataVersion?,
    ) as $Val);
  }

  /// Create a copy of VersionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataVersionCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataVersionCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VersionResponseImplCopyWith<$Res>
    implements $VersionResponseCopyWith<$Res> {
  factory _$$VersionResponseImplCopyWith(_$VersionResponseImpl value,
          $Res Function(_$VersionResponseImpl) then) =
      __$$VersionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") DataVersion? data});

  @override
  $DataVersionCopyWith<$Res>? get data;
}

/// @nodoc
class __$$VersionResponseImplCopyWithImpl<$Res>
    extends _$VersionResponseCopyWithImpl<$Res, _$VersionResponseImpl>
    implements _$$VersionResponseImplCopyWith<$Res> {
  __$$VersionResponseImplCopyWithImpl(
      _$VersionResponseImpl _value, $Res Function(_$VersionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of VersionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$VersionResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataVersion?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VersionResponseImpl extends _VersionResponse {
  const _$VersionResponseImpl({@JsonKey(name: "data") this.data}) : super._();

  factory _$VersionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VersionResponseImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final DataVersion? data;

  @override
  String toString() {
    return 'VersionResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VersionResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of VersionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VersionResponseImplCopyWith<_$VersionResponseImpl> get copyWith =>
      __$$VersionResponseImplCopyWithImpl<_$VersionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VersionResponseImplToJson(
      this,
    );
  }
}

abstract class _VersionResponse extends VersionResponse {
  const factory _VersionResponse(
      {@JsonKey(name: "data") final DataVersion? data}) = _$VersionResponseImpl;
  const _VersionResponse._() : super._();

  factory _VersionResponse.fromJson(Map<String, dynamic> json) =
      _$VersionResponseImpl.fromJson;

  @override
  @JsonKey(name: "data")
  DataVersion? get data;

  /// Create a copy of VersionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VersionResponseImplCopyWith<_$VersionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataVersion _$DataVersionFromJson(Map<String, dynamic> json) {
  return _DataVersion.fromJson(json);
}

/// @nodoc
mixin _$DataVersion {
  @JsonKey(name: "version")
  String? get version => throw _privateConstructorUsedError;

  /// Serializes this DataVersion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataVersionCopyWith<DataVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataVersionCopyWith<$Res> {
  factory $DataVersionCopyWith(
          DataVersion value, $Res Function(DataVersion) then) =
      _$DataVersionCopyWithImpl<$Res, DataVersion>;
  @useResult
  $Res call({@JsonKey(name: "version") String? version});
}

/// @nodoc
class _$DataVersionCopyWithImpl<$Res, $Val extends DataVersion>
    implements $DataVersionCopyWith<$Res> {
  _$DataVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataVersionImplCopyWith<$Res>
    implements $DataVersionCopyWith<$Res> {
  factory _$$DataVersionImplCopyWith(
          _$DataVersionImpl value, $Res Function(_$DataVersionImpl) then) =
      __$$DataVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "version") String? version});
}

/// @nodoc
class __$$DataVersionImplCopyWithImpl<$Res>
    extends _$DataVersionCopyWithImpl<$Res, _$DataVersionImpl>
    implements _$$DataVersionImplCopyWith<$Res> {
  __$$DataVersionImplCopyWithImpl(
      _$DataVersionImpl _value, $Res Function(_$DataVersionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_$DataVersionImpl(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataVersionImpl implements _DataVersion {
  const _$DataVersionImpl({@JsonKey(name: "version") this.version});

  factory _$DataVersionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataVersionImplFromJson(json);

  @override
  @JsonKey(name: "version")
  final String? version;

  @override
  String toString() {
    return 'DataVersion(version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataVersionImpl &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, version);

  /// Create a copy of DataVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataVersionImplCopyWith<_$DataVersionImpl> get copyWith =>
      __$$DataVersionImplCopyWithImpl<_$DataVersionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataVersionImplToJson(
      this,
    );
  }
}

abstract class _DataVersion implements DataVersion {
  const factory _DataVersion(
      {@JsonKey(name: "version") final String? version}) = _$DataVersionImpl;

  factory _DataVersion.fromJson(Map<String, dynamic> json) =
      _$DataVersionImpl.fromJson;

  @override
  @JsonKey(name: "version")
  String? get version;

  /// Create a copy of DataVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataVersionImplCopyWith<_$DataVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
