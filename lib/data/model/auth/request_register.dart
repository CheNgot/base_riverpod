import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_register.freezed.dart';

part 'request_register.g.dart';

@freezed
class RequestRegister with _$RequestRegister {
  factory RequestRegister({
    String? password,
    String? password_confirmation,
    String? day_of_birth,
    int? village_id,
    String? full_name,
    String? address,
    int? gender,
    String? phone,
    int? district_id,
    String? email,
    int? city_id,
  }) = _RequestRegister;

  factory RequestRegister.fromJson(Map<String, dynamic> json) => _$RequestRegisterFromJson(json);
}
