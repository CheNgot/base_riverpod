// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_change_forgot_pass.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestChangeForgotPass _$RequestChangeForgotPassFromJson(
    Map<String, dynamic> json) {
  return _RequestChangeForgotPass.fromJson(json);
}

/// @nodoc
class _$RequestChangeForgotPassTearOff {
  const _$RequestChangeForgotPassTearOff();

  _RequestChangeForgotPass call(
      {String? password,
      String? password_confirmation,
      String? code,
      String? email}) {
    return _RequestChangeForgotPass(
      password: password,
      password_confirmation: password_confirmation,
      code: code,
      email: email,
    );
  }

  RequestChangeForgotPass fromJson(Map<String, Object> json) {
    return RequestChangeForgotPass.fromJson(json);
  }
}

/// @nodoc
const $RequestChangeForgotPass = _$RequestChangeForgotPassTearOff();

/// @nodoc
mixin _$RequestChangeForgotPass {
  String? get password => throw _privateConstructorUsedError;
  String? get password_confirmation => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestChangeForgotPassCopyWith<RequestChangeForgotPass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestChangeForgotPassCopyWith<$Res> {
  factory $RequestChangeForgotPassCopyWith(RequestChangeForgotPass value,
          $Res Function(RequestChangeForgotPass) then) =
      _$RequestChangeForgotPassCopyWithImpl<$Res>;
  $Res call(
      {String? password,
      String? password_confirmation,
      String? code,
      String? email});
}

/// @nodoc
class _$RequestChangeForgotPassCopyWithImpl<$Res>
    implements $RequestChangeForgotPassCopyWith<$Res> {
  _$RequestChangeForgotPassCopyWithImpl(this._value, this._then);

  final RequestChangeForgotPass _value;
  // ignore: unused_field
  final $Res Function(RequestChangeForgotPass) _then;

  @override
  $Res call({
    Object? password = freezed,
    Object? password_confirmation = freezed,
    Object? code = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      password_confirmation: password_confirmation == freezed
          ? _value.password_confirmation
          : password_confirmation // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RequestChangeForgotPassCopyWith<$Res>
    implements $RequestChangeForgotPassCopyWith<$Res> {
  factory _$RequestChangeForgotPassCopyWith(_RequestChangeForgotPass value,
          $Res Function(_RequestChangeForgotPass) then) =
      __$RequestChangeForgotPassCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? password,
      String? password_confirmation,
      String? code,
      String? email});
}

/// @nodoc
class __$RequestChangeForgotPassCopyWithImpl<$Res>
    extends _$RequestChangeForgotPassCopyWithImpl<$Res>
    implements _$RequestChangeForgotPassCopyWith<$Res> {
  __$RequestChangeForgotPassCopyWithImpl(_RequestChangeForgotPass _value,
      $Res Function(_RequestChangeForgotPass) _then)
      : super(_value, (v) => _then(v as _RequestChangeForgotPass));

  @override
  _RequestChangeForgotPass get _value =>
      super._value as _RequestChangeForgotPass;

  @override
  $Res call({
    Object? password = freezed,
    Object? password_confirmation = freezed,
    Object? code = freezed,
    Object? email = freezed,
  }) {
    return _then(_RequestChangeForgotPass(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      password_confirmation: password_confirmation == freezed
          ? _value.password_confirmation
          : password_confirmation // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RequestChangeForgotPass implements _RequestChangeForgotPass {
  _$_RequestChangeForgotPass(
      {this.password, this.password_confirmation, this.code, this.email});

  factory _$_RequestChangeForgotPass.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestChangeForgotPassFromJson(json);

  @override
  final String? password;
  @override
  final String? password_confirmation;
  @override
  final String? code;
  @override
  final String? email;

  @override
  String toString() {
    return 'RequestChangeForgotPass(password: $password, password_confirmation: $password_confirmation, code: $code, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestChangeForgotPass &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.password_confirmation, password_confirmation) ||
                const DeepCollectionEquality().equals(
                    other.password_confirmation, password_confirmation)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(password_confirmation) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$RequestChangeForgotPassCopyWith<_RequestChangeForgotPass> get copyWith =>
      __$RequestChangeForgotPassCopyWithImpl<_RequestChangeForgotPass>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestChangeForgotPassToJson(this);
  }
}

abstract class _RequestChangeForgotPass implements RequestChangeForgotPass {
  factory _RequestChangeForgotPass(
      {String? password,
      String? password_confirmation,
      String? code,
      String? email}) = _$_RequestChangeForgotPass;

  factory _RequestChangeForgotPass.fromJson(Map<String, dynamic> json) =
      _$_RequestChangeForgotPass.fromJson;

  @override
  String? get password => throw _privateConstructorUsedError;
  @override
  String? get password_confirmation => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestChangeForgotPassCopyWith<_RequestChangeForgotPass> get copyWith =>
      throw _privateConstructorUsedError;
}
