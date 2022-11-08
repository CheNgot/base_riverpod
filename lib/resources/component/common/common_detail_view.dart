import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/gen/fonts.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_resource.dart';
import '../../app_textstyle.dart';
import '../icon/icon_button_back.dart';

class CommonDetailView extends StatelessWidget {
  String? label;
  String? body;
  Color? color;
  bool? isHaveBottomDivider;

  CommonDetailView({
    this.label,
    this.body,
    this.color,
    this.isHaveBottomDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                label ?? "",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: FontFamily.roboto,
                  fontSize: 14.sp,
                  color: color ?? Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Expanded(
              child: Text(
                body ?? "",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontFamily: FontFamily.roboto,
                  fontSize: 14.sp,
                  color: color ?? Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        isHaveBottomDivider == true ? Divider(color: color ?? colorGrey2, height: 0.5.h) : SizedBox(),
      ],
    );
  }
}
