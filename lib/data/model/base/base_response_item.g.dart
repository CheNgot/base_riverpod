// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseItem<T> _$BaseResponseItemFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) {
  return BaseResponseItem<T>(
    status: json['status'] as int?,
    items: _$nullableGenericFromJson(json['items'], fromJsonT),
    msg: json['msg'] as String?,
    errorMessage: json['errorMessage'] as String?,
  );
}

Map<String, dynamic> _$BaseResponseItemToJson<T>(
  BaseResponseItem<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status': instance.status,
      'items': _$nullableGenericToJson(instance.items, toJsonT),
      'msg': instance.msg,
      'errorMessage': instance.errorMessage,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
