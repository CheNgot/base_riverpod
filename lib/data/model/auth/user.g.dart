// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    avatar_thumbnail: json['avatar_thumbnail'] as String?,
    is_customer: json['is_customer'] as bool?,
    gender: json['gender'],
    avatar_thumbnail_url: json['avatar_thumbnail_url'] as String?,
    city: json['city'] == null
        ? null
        : CommonLocation.fromJson(json['city'] as Map<String, dynamic>),
    latitude: json['latitude'],
    approve_status: json['approve_status'] as String?,
    created_at: json['created_at'] as String?,
    is_super_admin: json['is_super_admin'] as bool?,
    is_admin: json['is_admin'] as bool?,
    account_verification_time: json['account_verification_time'],
    updated_at: json['updated_at'] as String?,
    refuse_number_used: json['refuse_number_used'] as int?,
    id: json['id'] as int?,
    is_online: json['is_online'] as int?,
    village: json['village'] == null
        ? null
        : CommonLocation.fromJson(json['village'] as Map<String, dynamic>),
    email: json['email'] as String?,
    longitude: json['longitude'],
    village_id: json['village_id'] as int?,
    day_of_birth: json['day_of_birth'] as String?,
    address: json['address'] as String?,
    is_active: json['is_active'] as bool?,
    wallet: json['wallet'],
    employee_base_code: json['employee_base_code'],
    avatar: json['avatar'] as String?,
    deleted_at: json['deleted_at'],
    is_employee: json['is_employee'] as bool?,
    country_code: json['country_code'] as String?,
    id_card_img_before: json['id_card_img_before'],
    full_name: json['full_name'] as String?,
    id_card_img_after: json['id_card_img_after'],
    avatar_url: json['avatar_url'] as String?,
    phone: json['phone'] as String?,
    district: json['district'] == null
        ? null
        : CommonLocation.fromJson(json['district'] as Map<String, dynamic>),
    working_status: json['working_status'] as String?,
    employee_number: json['employee_number'],
    district_id: json['district_id'] as int?,
    id_card_number: json['id_card_number'],
    employee_full_code: json['employee_full_code'] as String?,
    city_id: json['city_id'] as int?,
    avg_rate: json['avg_rate'] as int?,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'avatar_thumbnail': instance.avatar_thumbnail,
      'is_customer': instance.is_customer,
      'gender': instance.gender,
      'avatar_thumbnail_url': instance.avatar_thumbnail_url,
      'city': instance.city,
      'latitude': instance.latitude,
      'approve_status': instance.approve_status,
      'created_at': instance.created_at,
      'is_super_admin': instance.is_super_admin,
      'is_admin': instance.is_admin,
      'account_verification_time': instance.account_verification_time,
      'updated_at': instance.updated_at,
      'refuse_number_used': instance.refuse_number_used,
      'id': instance.id,
      'is_online': instance.is_online,
      'village': instance.village,
      'email': instance.email,
      'longitude': instance.longitude,
      'village_id': instance.village_id,
      'day_of_birth': instance.day_of_birth,
      'address': instance.address,
      'is_active': instance.is_active,
      'wallet': instance.wallet,
      'employee_base_code': instance.employee_base_code,
      'avatar': instance.avatar,
      'deleted_at': instance.deleted_at,
      'is_employee': instance.is_employee,
      'country_code': instance.country_code,
      'id_card_img_before': instance.id_card_img_before,
      'full_name': instance.full_name,
      'id_card_img_after': instance.id_card_img_after,
      'avatar_url': instance.avatar_url,
      'phone': instance.phone,
      'district': instance.district,
      'working_status': instance.working_status,
      'employee_number': instance.employee_number,
      'district_id': instance.district_id,
      'id_card_number': instance.id_card_number,
      'employee_full_code': instance.employee_full_code,
      'city_id': instance.city_id,
      'avg_rate': instance.avg_rate,
    };
