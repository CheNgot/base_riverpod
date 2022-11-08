// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_change_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestChangePassword _$_$_RequestChangePasswordFromJson(
    Map<String, dynamic> json) {
  return _$_RequestChangePassword(
    password: json['password'] as String?,
    password_confirmation: json['password_confirmation'] as String?,
    current_password: json['current_password'] as String?,
  );
}

Map<String, dynamic> _$_$_RequestChangePasswordToJson(
        _$_RequestChangePassword instance) =>
    <String, dynamic>{
      'password': instance.password,
      'password_confirmation': instance.password_confirmation,
      'current_password': instance.current_password,
    };
