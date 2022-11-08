// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_change_forgot_pass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestChangeForgotPass _$_$_RequestChangeForgotPassFromJson(
    Map<String, dynamic> json) {
  return _$_RequestChangeForgotPass(
    password: json['password'] as String?,
    password_confirmation: json['password_confirmation'] as String?,
    code: json['code'] as String?,
    email: json['email'] as String?,
  );
}

Map<String, dynamic> _$_$_RequestChangeForgotPassToJson(
        _$_RequestChangeForgotPass instance) =>
    <String, dynamic>{
      'password': instance.password,
      'password_confirmation': instance.password_confirmation,
      'code': instance.code,
      'email': instance.email,
    };
