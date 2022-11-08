// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_verify_otp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestVerifyOtp _$RequestVerifyOtpFromJson(Map<String, dynamic> json) {
  return _RequestVerifyOtp.fromJson(json);
}

/// @nodoc
class _$RequestVerifyOtpTearOff {
  const _$RequestVerifyOtpTearOff();

  _RequestVerifyOtp call({String? code, String? email}) {
    return _RequestVerifyOtp(
      code: code,
      email: email,
    );
  }

  RequestVerifyOtp fromJson(Map<String, Object> json) {
    return RequestVerifyOtp.fromJson(json);
  }
}

/// @nodoc
const $RequestVerifyOtp = _$RequestVerifyOtpTearOff();

/// @nodoc
mixin _$RequestVerifyOtp {
  String? get code => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestVerifyOtpCopyWith<RequestVerifyOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestVerifyOtpCopyWith<$Res> {
  factory $RequestVerifyOtpCopyWith(
          RequestVerifyOtp value, $Res Function(RequestVerifyOtp) then) =
      _$RequestVerifyOtpCopyWithImpl<$Res>;
  $Res call({String? code, String? email});
}

/// @nodoc
class _$RequestVerifyOtpCopyWithImpl<$Res>
    implements $RequestVerifyOtpCopyWith<$Res> {
  _$RequestVerifyOtpCopyWithImpl(this._value, this._then);

  final RequestVerifyOtp _value;
  // ignore: unused_field
  final $Res Function(RequestVerifyOtp) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$RequestVerifyOtpCopyWith<$Res>
    implements $RequestVerifyOtpCopyWith<$Res> {
  factory _$RequestVerifyOtpCopyWith(
          _RequestVerifyOtp value, $Res Function(_RequestVerifyOtp) then) =
      __$RequestVerifyOtpCopyWithImpl<$Res>;
  @override
  $Res call({String? code, String? email});
}

/// @nodoc
class __$RequestVerifyOtpCopyWithImpl<$Res>
    extends _$RequestVerifyOtpCopyWithImpl<$Res>
    implements _$RequestVerifyOtpCopyWith<$Res> {
  __$RequestVerifyOtpCopyWithImpl(
      _RequestVerifyOtp _value, $Res Function(_RequestVerifyOtp) _then)
      : super(_value, (v) => _then(v as _RequestVerifyOtp));

  @override
  _RequestVerifyOtp get _value => super._value as _RequestVerifyOtp;

  @override
  $Res call({
    Object? code = freezed,
    Object? email = freezed,
  }) {
    return _then(_RequestVerifyOtp(
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
class _$_RequestVerifyOtp implements _RequestVerifyOtp {
  _$_RequestVerifyOtp({this.code, this.email});

  factory _$_RequestVerifyOtp.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestVerifyOtpFromJson(json);

  @override
  final String? code;
  @override
  final String? email;

  @override
  String toString() {
    return 'RequestVerifyOtp(code: $code, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestVerifyOtp &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$RequestVerifyOtpCopyWith<_RequestVerifyOtp> get copyWith =>
      __$RequestVerifyOtpCopyWithImpl<_RequestVerifyOtp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestVerifyOtpToJson(this);
  }
}

abstract class _RequestVerifyOtp implements RequestVerifyOtp {
  factory _RequestVerifyOtp({String? code, String? email}) =
      _$_RequestVerifyOtp;

  factory _RequestVerifyOtp.fromJson(Map<String, dynamic> json) =
      _$_RequestVerifyOtp.fromJson;

  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestVerifyOtpCopyWith<_RequestVerifyOtp> get copyWith =>
      throw _privateConstructorUsedError;
}
