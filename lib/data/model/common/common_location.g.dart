// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_location.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CommonLocationAdapter extends TypeAdapter<CommonLocation> {
  @override
  final int typeId = 1;

  @override
  CommonLocation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CommonLocation(
      name: fields[0] as String?,
      id: fields[1] as int?,
      district_id: fields[2] as int?,
      type: fields[3] as String?,
      city_id: fields[4] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, CommonLocation obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.district_id)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.city_id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CommonLocationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommonLocation _$_$_CommonLocationFromJson(Map<String, dynamic> json) {
  return _$_CommonLocation(
    name: json['name'] as String?,
    id: json['id'] as int?,
    district_id: json['district_id'] as int?,
    type: json['type'] as String?,
    city_id: json['city_id'] as int?,
  );
}

Map<String, dynamic> _$_$_CommonLocationToJson(_$_CommonLocation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'district_id': instance.district_id,
      'type': instance.type,
      'city_id': instance.city_id,
    };
