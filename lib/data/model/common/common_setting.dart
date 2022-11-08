import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_setting.freezed.dart';

part 'common_setting.g.dart';

@freezed
class CommonSetting with _$CommonSetting {
  factory CommonSetting({
    String? name,
    String? type,
    String? value,
    String? key,
  }) = _CommonSetting;

  factory CommonSetting.fromJson(Map<String, dynamic> json) => _$CommonSettingFromJson(json);
}
