import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response_item.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponseItem<T> extends Equatable {
  final int? status;
  final T? items;
  final String? msg;
  final String? errorMessage;

  const BaseResponseItem({
    this.status,
    this.items,
    this.msg,
    this.errorMessage,
  });

  factory BaseResponseItem.fromJson(
      Map<String, dynamic> json,
      T Function(Object? json) fromJsonT,
      ) {
    return _$BaseResponseItemFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(
      Map<String, dynamic> Function(T value) toJsonT,
      ) {
    return _$BaseResponseItemToJson<T>(this, toJsonT);
  }

  @override
  List<Object?> get props => [
    status,
    items,
    msg,
    errorMessage
  ];
}