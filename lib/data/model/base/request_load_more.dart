import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'request_load_more.freezed.dart';

part 'request_load_more.g.dart';

@freezed
class RequestLoadMore with _$RequestLoadMore {
  factory RequestLoadMore({
    int? limit,
    int? page,
  }) = _RequestLoadMore;

  factory RequestLoadMore.fromJson(Map<String, dynamic> json) => _$RequestLoadMoreFromJson(json);
}
