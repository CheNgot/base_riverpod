// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_send_otp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestSendOtp _$RequestSendOtpFromJson(Map<String, dynamic> json) {
  return _RequestSendOtp.fromJson(json);
}

/// @nodoc
class _$RequestSendOtpTearOff {
  const _$RequestSendOtpTearOff();

  _RequestSendOtp call({String? email}) {
    return _RequestSendOtp(
      email: email,
    );
  }

  RequestSendOtp fromJson(Map<String, Object> json) {
    return RequestSendOtp.fromJson(json);
  }
}

/// @nodoc
const $RequestSendOtp = _$RequestSendOtpTearOff();

/// @nodoc
mixin _$RequestSendOtp {
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestSendOtpCopyWith<RequestSendOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestSendOtpCopyWith<$Res> {
  factory $RequestSendOtpCopyWith(
          RequestSendOtp value, $Res Function(RequestSendOtp) then) =
      _$RequestSendOtpCopyWithImpl<$Res>;
  $Res call({String? email});
}

/// @nodoc
class _$RequestSendOtpCopyWithImpl<$Res>
    implements $RequestSendOtpCopyWith<$Res> {
  _$RequestSendOtpCopyWithImpl(this._value, this._then);

  final RequestSendOtp _value;
  // ignore: unused_field
  final $Res Function(RequestSendOtp) _then;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RequestSendOtpCopyWith<$Res>
    implements $RequestSendOtpCopyWith<$Res> {
  factory _$RequestSendOtpCopyWith(
          _RequestSendOtp value, $Res Function(_RequestSendOtp) then) =
      __$RequestSendOtpCopyWithImpl<$Res>;
  @override
  $Res call({String? email});
}

/// @nodoc
class __$RequestSendOtpCopyWithImpl<$Res>
    extends _$RequestSendOtpCopyWithImpl<$Res>
    implements _$RequestSendOtpCopyWith<$Res> {
  __$RequestSendOtpCopyWithImpl(
      _RequestSendOtp _value, $Res Function(_RequestSendOtp) _then)
      : super(_value, (v) => _then(v as _RequestSendOtp));

  @override
  _RequestSendOtp get _value => super._value as _RequestSendOtp;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_RequestSendOtp(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RequestSendOtp implements _RequestSendOtp {
  _$_RequestSendOtp({this.email});

  factory _$_RequestSendOtp.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestSendOtpFromJson(json);

  @override
  final String? email;

  @override
  String toString() {
    return 'RequestSendOtp(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestSendOtp &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$RequestSendOtpCopyWith<_RequestSendOtp> get copyWith =>
      __$RequestSendOtpCopyWithImpl<_RequestSendOtp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestSendOtpToJson(this);
  }
}

abstract class _RequestSendOtp implements RequestSendOtp {
  factory _RequestSendOtp({String? email}) = _$_RequestSendOtp;

  factory _RequestSendOtp.fromJson(Map<String, dynamic> json) =
      _$_RequestSendOtp.fromJson;

  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestSendOtpCopyWith<_RequestSendOtp> get copyWith =>
      throw _privateConstructorUsedError;
}
