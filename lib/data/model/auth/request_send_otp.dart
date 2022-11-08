import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_send_otp.freezed.dart';

part 'request_send_otp.g.dart';

@freezed
class RequestSendOtp with _$RequestSendOtp {
  factory RequestSendOtp({
    String? email,
  }) = _RequestSendOtp;

  factory RequestSendOtp.fromJson(Map<String, dynamic> json) => _$RequestSendOtpFromJson(json);
}
