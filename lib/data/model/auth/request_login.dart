import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_login.freezed.dart';

part 'request_login.g.dart';

@freezed
class RequestLogin with _$RequestLogin {
  factory RequestLogin({
    String? password,
    String? app_type,
    String? phone,
  }) = _RequestLogin;

  factory RequestLogin.fromJson(Map<String, dynamic> json) => _$RequestLoginFromJson(json);
}
