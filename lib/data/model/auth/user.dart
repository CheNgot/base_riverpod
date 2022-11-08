import 'package:base_riverpod/data/model/common/common_location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    String? avatar_thumbnail,
    bool? is_customer,
    Object? gender, //Nam thì là 1, nữ thì là 0. Bắt buộc
    String? avatar_thumbnail_url,
    CommonLocation? city,
    Object? latitude,
    String? approve_status,
    String? created_at,
    bool? is_super_admin,
    bool? is_admin,
    Object? account_verification_time,
    String? updated_at,
    int? refuse_number_used,
    int? id,
    int? is_online,
    CommonLocation? village,
    String? email,
    Object? longitude,
    int? village_id,
    String? day_of_birth,
    String? address,
    bool? is_active,
    Object? wallet,
    Object? employee_base_code,
    String? avatar,
    Object? deleted_at,
    bool? is_employee,
    String? country_code,
    Object? id_card_img_before,
    String? full_name,
    Object? id_card_img_after,
    String? avatar_url,
    String? phone,
    CommonLocation? district,
    String? working_status,
    Object? employee_number,
    int? district_id,
    Object? id_card_number,
    String? employee_full_code,
    int? city_id,
    int? avg_rate,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  User._();

  int? getGender() {
    if (gender == null) return null;
    //API có lúc trả về string, có lúc trả về int
    if (gender is String) {
      return int.tryParse(gender as String);
    } else if (gender is int) {
      return gender as int;
    }
  }

  String? getFullAddress() {
    String fullAddress = "";
    fullAddress += address ?? "";
    if (village != null) {
      fullAddress += ", ";
      fullAddress += village?.name ?? "";
    }
    if (district != null) {
      fullAddress += ", ";
      fullAddress += district?.name ?? "";
    }
    if (city != null) {
      fullAddress += ", ";
      fullAddress += city?.name ?? "";
    }
    return fullAddress;
  }
}
