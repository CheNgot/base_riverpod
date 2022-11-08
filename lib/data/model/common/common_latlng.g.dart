// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_latlng.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommonLatLng _$_$_CommonLatLngFromJson(Map<String, dynamic> json) {
  return _$_CommonLatLng(
    lat: (json['lat'] as num?)?.toDouble(),
    lng: (json['lng'] as num?)?.toDouble(),
    placeName: json['placeName'] as String?,
  );
}

Map<String, dynamic> _$_$_CommonLatLngToJson(_$_CommonLatLng instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'placeName': instance.placeName,
    };
