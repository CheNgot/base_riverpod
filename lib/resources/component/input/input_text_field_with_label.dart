import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/resources/app_resource.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_textstyle.dart';

class InputTextFieldWithLabel extends StatelessWidget {
  final TextEditingController controller;
  final String? label;
  final String? hintText;
  final bool? isRequire;
  final Widget? suffixIcon;
  final bool? isFormatCurrency;
  final TextInputType? keyboardType;
  final int? maxLines;

  InputTextFieldWithLabel({
    required this.label,
    required this.controller,
    this.isRequire,
    this.suffixIcon,
    this.isFormatCurrency,
    this.keyboardType,
    this.maxLines,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: RichTextCustom(
            maxLines: 1,
            children: [
              TextSpan(text: label, style: styleTextBlack()),
              isRequire == true ? TextSpan(text: " *", style: styleTextRed()) : TextSpan(),
            ],
          ),
        ),
        SizedBox(height: 4.h),
        InputTextField(
          paddingVertical: 15.h,
          maxLines: maxLines,
          isValidator: isRequire ?? false,
          errorText: label,
          hintText: hintText,
          suffixIcon: suffixIcon,
          keyboardType: keyboardType,
          isFormatCurrency: isFormatCurrency,
          controller: controller,
          borderType: BorderType.typeRoundBorder,
        ),
      ],
    );
  }
}
