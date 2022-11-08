import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_verify_otp.freezed.dart';

part 'request_verify_otp.g.dart';

@freezed
class RequestVerifyOtp with _$RequestVerifyOtp {
  factory RequestVerifyOtp({
    String? code,
    String? email,
  }) = _RequestVerifyOtp;

  factory RequestVerifyOtp.fromJson(Map<String, dynamic> json) => _$RequestVerifyOtpFromJson(json);
}
