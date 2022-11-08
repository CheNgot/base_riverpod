import 'package:freezed_annotation/freezed_annotation.dart';

part 'tham_my_setting.freezed.dart';

part 'tham_my_setting.g.dart';

@freezed
class ThamMySetting with _$ThamMySetting {
  factory ThamMySetting({
    String? bankNumber,
    String? bankUserNote,
    String? contactPhoneNumber,
    String? bankName,
    String? bankAccountName,
  }) = _ThamMySetting;

  factory ThamMySetting.fromJson(Map<String, dynamic> json) => _$ThamMySettingFromJson(json);
}
