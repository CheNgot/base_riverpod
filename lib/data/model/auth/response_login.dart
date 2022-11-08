import 'package:base_riverpod/data/model/auth/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_login.freezed.dart';

part 'response_login.g.dart';

@freezed
class ResponseLogin with _$ResponseLogin {
  factory ResponseLogin({
    User? user,
    String? access_token,
  }) = _ResponseLogin;

  factory ResponseLogin.fromJson(Map<String, dynamic> json) => _$ResponseLoginFromJson(json);
}
