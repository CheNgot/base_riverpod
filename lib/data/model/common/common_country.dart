import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_country.freezed.dart';

part 'common_country.g.dart';

@freezed
class CommonCountry with _$CommonCountry {
  factory CommonCountry({
    int? id,
    String? country_code,
    String? country_name,
  }) = _CommonCountry;

  factory CommonCountry.fromJson(Map<String, dynamic> json) => _$CommonCountryFromJson(json);
}
