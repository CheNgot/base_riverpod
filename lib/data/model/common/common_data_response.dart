import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_data_response.freezed.dart';

part 'common_data_response.g.dart';

@freezed
class CommonDataResponse with _$CommonDataResponse {
  factory CommonDataResponse({
    String? name,
    int? id,
    String? type,
    String? title,
    String? key,
  }) = _CommonDataResponse;

  factory CommonDataResponse.fromJson(Map<String, dynamic> json) => _$CommonDataResponseFromJson(json);
}
