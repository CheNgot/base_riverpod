// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestLogin _$RequestLoginFromJson(Map<String, dynamic> json) {
  return _RequestLogin.fromJson(json);
}

/// @nodoc
class _$RequestLoginTearOff {
  const _$RequestLoginTearOff();

  _RequestLogin call({String? password, String? app_type, String? phone}) {
    return _RequestLogin(
      password: password,
      app_type: app_type,
      phone: phone,
    );
  }

  RequestLogin fromJson(Map<String, Object> json) {
    return RequestLogin.fromJson(json);
  }
}

/// @nodoc
const $RequestLogin = _$RequestLoginTearOff();

/// @nodoc
mixin _$RequestLogin {
  String? get password => throw _privateConstructorUsedError;
  String? get app_type => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestLoginCopyWith<RequestLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestLoginCopyWith<$Res> {
  factory $RequestLoginCopyWith(
          RequestLogin value, $Res Function(RequestLogin) then) =
      _$RequestLoginCopyWithImpl<$Res>;
  $Res call({String? password, String? app_type, String? phone});
}

/// @nodoc
class _$RequestLoginCopyWithImpl<$Res> implements $RequestLoginCopyWith<$Res> {
  _$RequestLoginCopyWithImpl(this._value, this._then);

  final RequestLogin _value;
  // ignore: unused_field
  final $Res Function(RequestLogin) _then;

  @override
  $Res call({
    Object? password = freezed,
    Object? app_type = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      app_type: app_type == freezed
          ? _value.app_type
          : app_type // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RequestLoginCopyWith<$Res>
    implements $RequestLoginCopyWith<$Res> {
  factory _$RequestLoginCopyWith(
          _RequestLogin value, $Res Function(_RequestLogin) then) =
      __$RequestLoginCopyWithImpl<$Res>;
  @override
  $Res call({String? password, String? app_type, String? phone});
}

/// @nodoc
class __$RequestLoginCopyWithImpl<$Res> extends _$RequestLoginCopyWithImpl<$Res>
    implements _$RequestLoginCopyWith<$Res> {
  __$RequestLoginCopyWithImpl(
      _RequestLogin _value, $Res Function(_RequestLogin) _then)
      : super(_value, (v) => _then(v as _RequestLogin));

  @override
  _RequestLogin get _value => super._value as _RequestLogin;

  @override
  $Res call({
    Object? password = freezed,
    Object? app_type = freezed,
    Object? phone = freezed,
  }) {
    return _then(_RequestLogin(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      app_type: app_type == freezed
          ? _value.app_type
          : app_type // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RequestLogin implements _RequestLogin {
  _$_RequestLogin({this.password, this.app_type, this.phone});

  factory _$_RequestLogin.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestLoginFromJson(json);

  @override
  final String? password;
  @override
  final String? app_type;
  @override
  final String? phone;

  @override
  String toString() {
    return 'RequestLogin(password: $password, app_type: $app_type, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestLogin &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.app_type, app_type) ||
                const DeepCollectionEquality()
                    .equals(other.app_type, app_type)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(app_type) ^
      const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  _$RequestLoginCopyWith<_RequestLogin> get copyWith =>
      __$RequestLoginCopyWithImpl<_RequestLogin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestLoginToJson(this);
  }
}

abstract class _RequestLogin implements RequestLogin {
  factory _RequestLogin({String? password, String? app_type, String? phone}) =
      _$_RequestLogin;

  factory _RequestLogin.fromJson(Map<String, dynamic> json) =
      _$_RequestLogin.fromJson;

  @override
  String? get password => throw _privateConstructorUsedError;
  @override
  String? get app_type => throw _privateConstructorUsedError;
  @override
  String? get phone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestLoginCopyWith<_RequestLogin> get copyWith =>
      throw _privateConstructorUsedError;
}
