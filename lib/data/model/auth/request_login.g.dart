// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestLogin _$_$_RequestLoginFromJson(Map<String, dynamic> json) {
  return _$_RequestLogin(
    password: json['password'] as String?,
    app_type: json['app_type'] as String?,
    phone: json['phone'] as String?,
  );
}

Map<String, dynamic> _$_$_RequestLoginToJson(_$_RequestLogin instance) =>
    <String, dynamic>{
      'password': instance.password,
      'app_type': instance.app_type,
      'phone': instance.phone,
    };
