import 'dart:core';
import 'dart:io';

import 'package:dio/dio.dart';

class RequestUpdateProfile {
  File? avatar;

  String? full_name;
  String? day_of_birth;
  String? address;
  String? phone;
  String? email;
  String? type;
  int? district_id;
  int? city_id;
  int? village_id;

  RequestUpdateProfile({
    this.avatar,
    this.full_name,
    this.day_of_birth,
    this.address,
    this.phone,
    this.email,
    this.type,
    this.district_id,
    this.city_id,
    this.village_id,
  });

  Future<FormData> toFormData() async {
    var multiPartAvatar = avatar == null
        ? null
        : await MultipartFile.fromFile(avatar?.path ?? "", filename: avatar?.path.split('/').last ?? "");

    return FormData.fromMap({
      "avatar": multiPartAvatar,
      "full_name": full_name,
      "day_of_birth": day_of_birth,
      "address": address,
      "phone": phone,
      "email": email,
      "type": type,
      "district_id": district_id,
      "city_id": city_id,
      "village_id": village_id,
    });
  }
}
