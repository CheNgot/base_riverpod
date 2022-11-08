import 'dart:core';
import 'dart:io';

import 'package:dio/dio.dart';

class RequestUploadImageAdvise {
  File? file;

  // String? type;

  RequestUploadImageAdvise({this.file});

  Future<FormData> toFormData() async {
    var formData = FormData();
    var fileName = file?.path.split('/').last ?? "";
    var multipart = await MultipartFile.fromFile(file?.path ?? "", filename: fileName);

    formData.files.addAll([
      MapEntry("image", multipart),
    ]);

    return formData;
  }
}
