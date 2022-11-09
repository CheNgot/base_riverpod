// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseBanner _$_$_ResponseBannerFromJson(Map<String, dynamic> json) {
  return _$_ResponseBanner(
    id: json['id'] as int?,
    type: json['type'] as String?,
    descriptions: json['descriptions'] as String?,
    isActive: json['isActive'] as int?,
    images: (json['images'] as List<dynamic>?)
        ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
        .toList(),
    videos: (json['videos'] as List<dynamic>?)
        ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
        .toList(),
    closedDate: json['closedDate'] == null
        ? null
        : DateTime.parse(json['closedDate'] as String),
    site: json['site'] == null
        ? null
        : Site.fromJson(json['site'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ResponseBannerToJson(_$_ResponseBanner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'descriptions': instance.descriptions,
      'isActive': instance.isActive,
      'images': instance.images,
      'videos': instance.videos,
      'closedDate': instance.closedDate?.toIso8601String(),
      'site': instance.site,
    };

_$_Image _$_$_ImageFromJson(Map<String, dynamic> json) {
  return _$_Image(
    url: json['url'] as String?,
    name: json['name'] as String?,
    thumbnail_url: json['thumbnail_url'] as String?,
  );
}

Map<String, dynamic> _$_$_ImageToJson(_$_Image instance) => <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'thumbnail_url': instance.thumbnail_url,
    };

_$_Site _$_$_SiteFromJson(Map<String, dynamic> json) {
  return _$_Site(
    id: json['id'] as int?,
    name: json['name'] as String?,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$_$_SiteToJson(_$_Site instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
