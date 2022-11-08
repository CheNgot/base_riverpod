import 'dart:core';
import 'dart:io';

import 'package:dio/dio.dart';

class RequestUploadImage {
  File? file;

  // String? type;

  RequestUploadImage({this.file});

  Future<FormData> toFormData() async {
    var formData = FormData();
    var fileName = file?.path.split('/').last ?? "";
    var multipart = await MultipartFile.fromFile(file?.path ?? "", filename: fileName);

    formData.files.addAll([
      MapEntry("file", multipart),
    ]);

    return formData;
  }
}
