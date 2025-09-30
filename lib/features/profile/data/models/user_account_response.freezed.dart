// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_account_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAccountResponse _$UserAccountResponseFromJson(Map<String, dynamic> json) {
  return _UserAccountResponse.fromJson(json);
}

/// @nodoc
mixin _$UserAccountResponse {
  @JsonKey(name: "data")
  DataUserAccount? get data => throw _privateConstructorUsedError;

  /// Serializes this UserAccountResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAccountResponseCopyWith<UserAccountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAccountResponseCopyWith<$Res> {
  factory $UserAccountResponseCopyWith(
          UserAccountResponse value, $Res Function(UserAccountResponse) then) =
      _$UserAccountResponseCopyWithImpl<$Res, UserAccountResponse>;
  @useResult
  $Res call({@JsonKey(name: "data") DataUserAccount? data});

  $DataUserAccountCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserAccountResponseCopyWithImpl<$Res, $Val extends UserAccountResponse>
    implements $UserAccountResponseCopyWith<$Res> {
  _$UserAccountResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAccountResponse
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
              as DataUserAccount?,
    ) as $Val);
  }

  /// Create a copy of UserAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataUserAccountCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataUserAccountCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserAccountResponseImplCopyWith<$Res>
    implements $UserAccountResponseCopyWith<$Res> {
  factory _$$UserAccountResponseImplCopyWith(_$UserAccountResponseImpl value,
          $Res Function(_$UserAccountResponseImpl) then) =
      __$$UserAccountResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") DataUserAccount? data});

  @override
  $DataUserAccountCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserAccountResponseImplCopyWithImpl<$Res>
    extends _$UserAccountResponseCopyWithImpl<$Res, _$UserAccountResponseImpl>
    implements _$$UserAccountResponseImplCopyWith<$Res> {
  __$$UserAccountResponseImplCopyWithImpl(_$UserAccountResponseImpl _value,
      $Res Function(_$UserAccountResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$UserAccountResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataUserAccount?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAccountResponseImpl extends _UserAccountResponse {
  const _$UserAccountResponseImpl({@JsonKey(name: "data") this.data})
      : super._();

  factory _$UserAccountResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAccountResponseImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final DataUserAccount? data;

  @override
  String toString() {
    return 'UserAccountResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAccountResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of UserAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAccountResponseImplCopyWith<_$UserAccountResponseImpl> get copyWith =>
      __$$UserAccountResponseImplCopyWithImpl<_$UserAccountResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAccountResponseImplToJson(
      this,
    );
  }
}

abstract class _UserAccountResponse extends UserAccountResponse {
  const factory _UserAccountResponse(
          {@JsonKey(name: "data") final DataUserAccount? data}) =
      _$UserAccountResponseImpl;
  const _UserAccountResponse._() : super._();

  factory _UserAccountResponse.fromJson(Map<String, dynamic> json) =
      _$UserAccountResponseImpl.fromJson;

  @override
  @JsonKey(name: "data")
  DataUserAccount? get data;

  /// Create a copy of UserAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAccountResponseImplCopyWith<_$UserAccountResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataUserAccount _$DataUserAccountFromJson(Map<String, dynamic> json) {
  return _DataUserAccount.fromJson(json);
}

/// @nodoc
mixin _$DataUserAccount {
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this DataUserAccount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataUserAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataUserAccountCopyWith<DataUserAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataUserAccountCopyWith<$Res> {
  factory $DataUserAccountCopyWith(
          DataUserAccount value, $Res Function(DataUserAccount) then) =
      _$DataUserAccountCopyWithImpl<$Res, DataUserAccount>;
  @useResult
  $Res call(
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "email") String? email});
}

/// @nodoc
class _$DataUserAccountCopyWithImpl<$Res, $Val extends DataUserAccount>
    implements $DataUserAccountCopyWith<$Res> {
  _$DataUserAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataUserAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataUserAccountImplCopyWith<$Res>
    implements $DataUserAccountCopyWith<$Res> {
  factory _$$DataUserAccountImplCopyWith(_$DataUserAccountImpl value,
          $Res Function(_$DataUserAccountImpl) then) =
      __$$DataUserAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "email") String? email});
}

/// @nodoc
class __$$DataUserAccountImplCopyWithImpl<$Res>
    extends _$DataUserAccountCopyWithImpl<$Res, _$DataUserAccountImpl>
    implements _$$DataUserAccountImplCopyWith<$Res> {
  __$$DataUserAccountImplCopyWithImpl(
      _$DataUserAccountImpl _value, $Res Function(_$DataUserAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataUserAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
  }) {
    return _then(_$DataUserAccountImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataUserAccountImpl implements _DataUserAccount {
  const _$DataUserAccountImpl(
      {@JsonKey(name: "username") this.username,
      @JsonKey(name: "email") this.email});

  factory _$DataUserAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataUserAccountImplFromJson(json);

  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "email")
  final String? email;

  @override
  String toString() {
    return 'DataUserAccount(username: $username, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataUserAccountImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, email);

  /// Create a copy of DataUserAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataUserAccountImplCopyWith<_$DataUserAccountImpl> get copyWith =>
      __$$DataUserAccountImplCopyWithImpl<_$DataUserAccountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataUserAccountImplToJson(
      this,
    );
  }
}

abstract class _DataUserAccount implements DataUserAccount {
  const factory _DataUserAccount(
      {@JsonKey(name: "username") final String? username,
      @JsonKey(name: "email") final String? email}) = _$DataUserAccountImpl;

  factory _DataUserAccount.fromJson(Map<String, dynamic> json) =
      _$DataUserAccountImpl.fromJson;

  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "email")
  String? get email;

  /// Create a copy of DataUserAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataUserAccountImplCopyWith<_$DataUserAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
