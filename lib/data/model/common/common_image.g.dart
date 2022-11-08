// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommonImage _$_$_CommonImageFromJson(Map<String, dynamic> json) {
  return _$_CommonImage(
    size: json['size'] as int?,
    name: json['name'] as String?,
    id: json['id'] as int?,
    mimeType: json['mimeType'] as String?,
    url: json['url'] as String?,
  );
}

Map<String, dynamic> _$_$_CommonImageToJson(_$_CommonImage instance) =>
    <String, dynamic>{
      'size': instance.size,
      'name': instance.name,
      'id': instance.id,
      'mimeType': instance.mimeType,
      'url': instance.url,
    };
