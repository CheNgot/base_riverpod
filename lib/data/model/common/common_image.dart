import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_image.freezed.dart';

part 'common_image.g.dart';

@freezed
class CommonImage with _$CommonImage {
  factory CommonImage({
    int? size,
    String? name,
    int? id,
    String? mimeType,
    String? url,
  }) = _CommonImage;

  factory CommonImage.fromJson(Map<String, dynamic> json) => _$CommonImageFromJson(json);
}
