import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_change_forgot_pass.freezed.dart';

part 'request_change_forgot_pass.g.dart';

@freezed
class RequestChangeForgotPass with _$RequestChangeForgotPass {
  factory RequestChangeForgotPass({
    String? password,
    String? password_confirmation,
    String? code,
    String? email,
  }) = _RequestChangeForgotPass;

  factory RequestChangeForgotPass.fromJson(Map<String, dynamic> json) => _$RequestChangeForgotPassFromJson(json);
}
