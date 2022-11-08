// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestRegister _$_$_RequestRegisterFromJson(Map<String, dynamic> json) {
  return _$_RequestRegister(
    password: json['password'] as String?,
    password_confirmation: json['password_confirmation'] as String?,
    day_of_birth: json['day_of_birth'] as String?,
    village_id: json['village_id'] as int?,
    full_name: json['full_name'] as String?,
    address: json['address'] as String?,
    gender: json['gender'] as int?,
    phone: json['phone'] as String?,
    district_id: json['district_id'] as int?,
    email: json['email'] as String?,
    city_id: json['city_id'] as int?,
  );
}

Map<String, dynamic> _$_$_RequestRegisterToJson(_$_RequestRegister instance) =>
    <String, dynamic>{
      'password': instance.password,
      'password_confirmation': instance.password_confirmation,
      'day_of_birth': instance.day_of_birth,
      'village_id': instance.village_id,
      'full_name': instance.full_name,
      'address': instance.address,
      'gender': instance.gender,
      'phone': instance.phone,
      'district_id': instance.district_id,
      'email': instance.email,
      'city_id': instance.city_id,
    };
