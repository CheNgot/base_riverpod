// To parse this JSON data, do
//
//     final responseBanner = responseBannerFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_banner.freezed.dart';
part 'response_banner.g.dart';

ResponseBanner responseBannerFromJson(String str) => ResponseBanner.fromJson(json.decode(str));

String responseBannerToJson(ResponseBanner data) => json.encode(data.toJson());

@freezed
abstract class ResponseBanner with _$ResponseBanner {
  const factory ResponseBanner({
    int? id,
    String? type,
    String? descriptions,
    int? isActive,
    List<Image>? images,
    List<Image>? videos,
    DateTime? closedDate,
    Site? site,
  }) = _ResponseBanner;

  factory ResponseBanner.fromJson(Map<String, dynamic> json) => _$ResponseBannerFromJson(json);
}

@freezed
abstract class Image with _$Image {
  const factory Image({
    String? url,
    String? name,
    String? thumbnail_url,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
abstract class Site with _$Site {
  const factory Site({
    int? id,
    String? name,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Site;

  factory Site.fromJson(Map<String, dynamic> json) => _$SiteFromJson(json);
}
