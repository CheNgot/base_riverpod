import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_media.freezed.dart';

part 'common_media.g.dart';

@freezed
class CommonMedia with _$CommonMedia {
  factory CommonMedia({
    String? path,
    String? thumbnail_path,
    String? updated_at,
    String? thumbnail_path_url,
    int? service_id,
    String? created_at,
    int? id,
    String? type,
    Object? deleted_at,
    String? path_url,
  }) = _CommonMedia;

  factory CommonMedia.fromJson(Map<String, dynamic> json) => _$CommonMediaFromJson(json);
}
