import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/gen/fonts.gen.dart';
import 'package:base_riverpod/resources/app_resource.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_colors.dart';
import '../../app_textstyle.dart';

class CommonSearchView extends StatelessWidget {
  TextEditingController searchTed = TextEditingController();
  String? hintText;

  final ValueChanged<String>? onFieldSubmitted;

  CommonSearchView({
    this.onFieldSubmitted,
    this.hintText = "Tìm kiếm",
  });

  @override
  Widget build(BuildContext context) {
    return InputTextField(
      controller: searchTed,
      borderType: BorderType.typeRoundBorder,
      hintText: hintText,
      hintStyle: TextStyle(
        fontFamily: FontFamily.roboto,
        fontSize: 14.sp,
        color: colorGrey2,
        fontWeight: FontWeight.normal,
      ),
      textInputAction: TextInputAction.search,
      fillColor: Colors.white,
      prefixIcon: Icon(Icons.search, size: 25.w, color: colorGrey),
      prefixIconSize: 40.w,
      onFieldSubmitted: onFieldSubmitted,
    );
  }
}
