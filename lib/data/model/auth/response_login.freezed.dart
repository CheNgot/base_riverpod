// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'response_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseLogin _$ResponseLoginFromJson(Map<String, dynamic> json) {
  return _ResponseLogin.fromJson(json);
}

/// @nodoc
class _$ResponseLoginTearOff {
  const _$ResponseLoginTearOff();

  _ResponseLogin call({User? user, String? access_token}) {
    return _ResponseLogin(
      user: user,
      access_token: access_token,
    );
  }

  ResponseLogin fromJson(Map<String, Object> json) {
    return ResponseLogin.fromJson(json);
  }
}

/// @nodoc
const $ResponseLogin = _$ResponseLoginTearOff();

/// @nodoc
mixin _$ResponseLogin {
  User? get user => throw _privateConstructorUsedError;
  String? get access_token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseLoginCopyWith<ResponseLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseLoginCopyWith<$Res> {
  factory $ResponseLoginCopyWith(
          ResponseLogin value, $Res Function(ResponseLogin) then) =
      _$ResponseLoginCopyWithImpl<$Res>;
  $Res call({User? user, String? access_token});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ResponseLoginCopyWithImpl<$Res>
    implements $ResponseLoginCopyWith<$Res> {
  _$ResponseLoginCopyWithImpl(this._value, this._then);

  final ResponseLogin _value;
  // ignore: unused_field
  final $Res Function(ResponseLogin) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? access_token = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      access_token: access_token == freezed
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$ResponseLoginCopyWith<$Res>
    implements $ResponseLoginCopyWith<$Res> {
  factory _$ResponseLoginCopyWith(
          _ResponseLogin value, $Res Function(_ResponseLogin) then) =
      __$ResponseLoginCopyWithImpl<$Res>;
  @override
  $Res call({User? user, String? access_token});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$ResponseLoginCopyWithImpl<$Res>
    extends _$ResponseLoginCopyWithImpl<$Res>
    implements _$ResponseLoginCopyWith<$Res> {
  __$ResponseLoginCopyWithImpl(
      _ResponseLogin _value, $Res Function(_ResponseLogin) _then)
      : super(_value, (v) => _then(v as _ResponseLogin));

  @override
  _ResponseLogin get _value => super._value as _ResponseLogin;

  @override
  $Res call({
    Object? user = freezed,
    Object? access_token = freezed,
  }) {
    return _then(_ResponseLogin(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      access_token: access_token == freezed
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ResponseLogin implements _ResponseLogin {
  _$_ResponseLogin({this.user, this.access_token});

  factory _$_ResponseLogin.fromJson(Map<String, dynamic> json) =>
      _$_$_ResponseLoginFromJson(json);

  @override
  final User? user;
  @override
  final String? access_token;

  @override
  String toString() {
    return 'ResponseLogin(user: $user, access_token: $access_token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResponseLogin &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.access_token, access_token) ||
                const DeepCollectionEquality()
                    .equals(other.access_token, access_token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(access_token);

  @JsonKey(ignore: true)
  @override
  _$ResponseLoginCopyWith<_ResponseLogin> get copyWith =>
      __$ResponseLoginCopyWithImpl<_ResponseLogin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ResponseLoginToJson(this);
  }
}

abstract class _ResponseLogin implements ResponseLogin {
  factory _ResponseLogin({User? user, String? access_token}) = _$_ResponseLogin;

  factory _ResponseLogin.fromJson(Map<String, dynamic> json) =
      _$_ResponseLogin.fromJson;

  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  String? get access_token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResponseLoginCopyWith<_ResponseLogin> get copyWith =>
      throw _privateConstructorUsedError;
}
