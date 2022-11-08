import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'common_location.freezed.dart';

part 'common_location.g.dart';

@freezed
@HiveType(typeId: 1)
class CommonLocation with _$CommonLocation {
  factory CommonLocation({
    @HiveField(0)
    String? name,
    @HiveField(1)
    int? id,
    @HiveField(2)
    int? district_id,
    @HiveField(3)
    String? type,
    @HiveField(4)
    int? city_id,
  }) = _CommonLocation;

  factory CommonLocation.fromJson(Map<String, dynamic> json) => _$CommonLocationFromJson(json);
}
