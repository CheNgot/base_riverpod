import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_banner.freezed.dart';

part 'common_banner.g.dart';

@freezed
class CommonBanner with _$CommonBanner {
  factory CommonBanner({
    String? path,
    int? is_active,
    String? link,
    int? id,
    String? title,
  }) = _CommonBanner;

  factory CommonBanner.fromJson(Map<String, dynamic> json) => _$CommonBannerFromJson(json);
}
