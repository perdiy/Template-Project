// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeneralResponse _$GeneralResponseFromJson(Map<String, dynamic> json) {
  return _GeneralResponse.fromJson(json);
}

/// @nodoc
mixin _$GeneralResponse {
  @JsonKey(name: "data")
  DataGeneral? get data => throw _privateConstructorUsedError;

  /// Serializes this GeneralResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeneralResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeneralResponseCopyWith<GeneralResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralResponseCopyWith<$Res> {
  factory $GeneralResponseCopyWith(
          GeneralResponse value, $Res Function(GeneralResponse) then) =
      _$GeneralResponseCopyWithImpl<$Res, GeneralResponse>;
  @useResult
  $Res call({@JsonKey(name: "data") DataGeneral? data});

  $DataGeneralCopyWith<$Res>? get data;
}

/// @nodoc
class _$GeneralResponseCopyWithImpl<$Res, $Val extends GeneralResponse>
    implements $GeneralResponseCopyWith<$Res> {
  _$GeneralResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeneralResponse
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
              as DataGeneral?,
    ) as $Val);
  }

  /// Create a copy of GeneralResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataGeneralCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataGeneralCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GeneralResponseImplCopyWith<$Res>
    implements $GeneralResponseCopyWith<$Res> {
  factory _$$GeneralResponseImplCopyWith(_$GeneralResponseImpl value,
          $Res Function(_$GeneralResponseImpl) then) =
      __$$GeneralResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") DataGeneral? data});

  @override
  $DataGeneralCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GeneralResponseImplCopyWithImpl<$Res>
    extends _$GeneralResponseCopyWithImpl<$Res, _$GeneralResponseImpl>
    implements _$$GeneralResponseImplCopyWith<$Res> {
  __$$GeneralResponseImplCopyWithImpl(
      _$GeneralResponseImpl _value, $Res Function(_$GeneralResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeneralResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GeneralResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataGeneral?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneralResponseImpl extends _GeneralResponse {
  const _$GeneralResponseImpl({@JsonKey(name: "data") this.data}) : super._();

  factory _$GeneralResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneralResponseImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final DataGeneral? data;

  @override
  String toString() {
    return 'GeneralResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of GeneralResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralResponseImplCopyWith<_$GeneralResponseImpl> get copyWith =>
      __$$GeneralResponseImplCopyWithImpl<_$GeneralResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneralResponseImplToJson(
      this,
    );
  }
}

abstract class _GeneralResponse extends GeneralResponse {
  const factory _GeneralResponse(
      {@JsonKey(name: "data") final DataGeneral? data}) = _$GeneralResponseImpl;
  const _GeneralResponse._() : super._();

  factory _GeneralResponse.fromJson(Map<String, dynamic> json) =
      _$GeneralResponseImpl.fromJson;

  @override
  @JsonKey(name: "data")
  DataGeneral? get data;

  /// Create a copy of GeneralResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeneralResponseImplCopyWith<_$GeneralResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataGeneral _$DataGeneralFromJson(Map<String, dynamic> json) {
  return _DataGeneral.fromJson(json);
}

/// @nodoc
mixin _$DataGeneral {
  @JsonKey(name: "userAccountId")
  String? get userAccountId => throw _privateConstructorUsedError;

  /// Serializes this DataGeneral to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataGeneral
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataGeneralCopyWith<DataGeneral> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataGeneralCopyWith<$Res> {
  factory $DataGeneralCopyWith(
          DataGeneral value, $Res Function(DataGeneral) then) =
      _$DataGeneralCopyWithImpl<$Res, DataGeneral>;
  @useResult
  $Res call({@JsonKey(name: "userAccountId") String? userAccountId});
}

/// @nodoc
class _$DataGeneralCopyWithImpl<$Res, $Val extends DataGeneral>
    implements $DataGeneralCopyWith<$Res> {
  _$DataGeneralCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataGeneral
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
abstract class _$$DataGeneralImplCopyWith<$Res>
    implements $DataGeneralCopyWith<$Res> {
  factory _$$DataGeneralImplCopyWith(
          _$DataGeneralImpl value, $Res Function(_$DataGeneralImpl) then) =
      __$$DataGeneralImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "userAccountId") String? userAccountId});
}

/// @nodoc
class __$$DataGeneralImplCopyWithImpl<$Res>
    extends _$DataGeneralCopyWithImpl<$Res, _$DataGeneralImpl>
    implements _$$DataGeneralImplCopyWith<$Res> {
  __$$DataGeneralImplCopyWithImpl(
      _$DataGeneralImpl _value, $Res Function(_$DataGeneralImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataGeneral
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAccountId = freezed,
  }) {
    return _then(_$DataGeneralImpl(
      userAccountId: freezed == userAccountId
          ? _value.userAccountId
          : userAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataGeneralImpl implements _DataGeneral {
  const _$DataGeneralImpl({@JsonKey(name: "userAccountId") this.userAccountId});

  factory _$DataGeneralImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataGeneralImplFromJson(json);

  @override
  @JsonKey(name: "userAccountId")
  final String? userAccountId;

  @override
  String toString() {
    return 'DataGeneral(userAccountId: $userAccountId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataGeneralImpl &&
            (identical(other.userAccountId, userAccountId) ||
                other.userAccountId == userAccountId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userAccountId);

  /// Create a copy of DataGeneral
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataGeneralImplCopyWith<_$DataGeneralImpl> get copyWith =>
      __$$DataGeneralImplCopyWithImpl<_$DataGeneralImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataGeneralImplToJson(
      this,
    );
  }
}

abstract class _DataGeneral implements DataGeneral {
  const factory _DataGeneral(
          {@JsonKey(name: "userAccountId") final String? userAccountId}) =
      _$DataGeneralImpl;

  factory _DataGeneral.fromJson(Map<String, dynamic> json) =
      _$DataGeneralImpl.fromJson;

  @override
  @JsonKey(name: "userAccountId")
  String? get userAccountId;

  /// Create a copy of DataGeneral
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataGeneralImplCopyWith<_$DataGeneralImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
