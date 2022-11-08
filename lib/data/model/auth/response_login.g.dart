// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseLogin _$_$_ResponseLoginFromJson(Map<String, dynamic> json) {
  return _$_ResponseLogin(
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    access_token: json['access_token'] as String?,
  );
}

Map<String, dynamic> _$_$_ResponseLoginToJson(_$_ResponseLogin instance) =>
    <String, dynamic>{
      'user': instance.user,
      'access_token': instance.access_token,
    };
