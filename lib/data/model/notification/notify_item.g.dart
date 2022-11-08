// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notify_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotifyItem _$_$_NotifyItemFromJson(Map<String, dynamic> json) {
  return _$_NotifyItem(
    icon_url: json['icon_url'] as String?,
    role_of_to_user: json['role_of_to_user'] as String?,
    icon: json['icon'] as String?,
    created_at: json['created_at'] as String?,
    role_of_from_user: json['role_of_from_user'] as String?,
    short_body: json['short_body'] as String?,
    title: json['title'] as String?,
    body: json['body'] as String?,
    type: json['type'] as String?,
    is_read: json['is_read'] as bool?,
    updated_at: json['updated_at'] as String?,
    resource_table_name: json['resource_table_name'] as String?,
    to_user_id: json['to_user_id'] as int?,
    resource_id: json['resource_id'] as int?,
    id: json['id'] as int?,
    from_user_id: json['from_user_id'] as int?,
    status: json['status'] as String?,
    content: json['content'] as String?,
  );
}

Map<String, dynamic> _$_$_NotifyItemToJson(_$_NotifyItem instance) =>
    <String, dynamic>{
      'icon_url': instance.icon_url,
      'role_of_to_user': instance.role_of_to_user,
      'icon': instance.icon,
      'created_at': instance.created_at,
      'role_of_from_user': instance.role_of_from_user,
      'short_body': instance.short_body,
      'title': instance.title,
      'body': instance.body,
      'type': instance.type,
      'is_read': instance.is_read,
      'updated_at': instance.updated_at,
      'resource_table_name': instance.resource_table_name,
      'to_user_id': instance.to_user_id,
      'resource_id': instance.resource_id,
      'id': instance.id,
      'from_user_id': instance.from_user_id,
      'status': instance.status,
      'content': instance.content,
    };
