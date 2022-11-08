import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_latlng.freezed.dart';

part 'common_latlng.g.dart';

@freezed
class CommonLatLng with _$CommonLatLng {
  factory CommonLatLng({double? lat, double? lng, String? placeName}) = _CommonLatLng;

  factory CommonLatLng.fromJson(Map<String, dynamic> json) => _$CommonLatLngFromJson(json);
}
