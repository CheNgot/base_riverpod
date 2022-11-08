import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_change_password.freezed.dart';

part 'request_change_password.g.dart';

@freezed
class RequestChangePassword with _$RequestChangePassword {
  factory RequestChangePassword({
    String? password,
    String? password_confirmation,
    String? current_password,
  }) = _RequestChangePassword;

  factory RequestChangePassword.fromJson(Map<String, dynamic> json) => _$RequestChangePasswordFromJson(json);
}
