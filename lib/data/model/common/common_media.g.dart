// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommonMedia _$_$_CommonMediaFromJson(Map<String, dynamic> json) {
  return _$_CommonMedia(
    path: json['path'] as String?,
    thumbnail_path: json['thumbnail_path'] as String?,
    updated_at: json['updated_at'] as String?,
    thumbnail_path_url: json['thumbnail_path_url'] as String?,
    service_id: json['service_id'] as int?,
    created_at: json['created_at'] as String?,
    id: json['id'] as int?,
    type: json['type'] as String?,
    deleted_at: json['deleted_at'],
    path_url: json['path_url'] as String?,
  );
}

Map<String, dynamic> _$_$_CommonMediaToJson(_$_CommonMedia instance) =>
    <String, dynamic>{
      'path': instance.path,
      'thumbnail_path': instance.thumbnail_path,
      'updated_at': instance.updated_at,
      'thumbnail_path_url': instance.thumbnail_path_url,
      'service_id': instance.service_id,
      'created_at': instance.created_at,
      'id': instance.id,
      'type': instance.type,
      'deleted_at': instance.deleted_at,
      'path_url': instance.path_url,
    };
