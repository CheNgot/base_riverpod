import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/gen/fonts.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_resource.dart';
import '../../app_textstyle.dart';
import '../icon/icon_button_back.dart';

class CommonInputView extends StatelessWidget {
  final TextEditingController ted;
  String? hintText;
  Color? color;
  bool? isHaveBottomDivider;

  CommonInputView({
    required this.ted,
    this.hintText,
    this.color,
    this.isHaveBottomDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decorSolidRound(radius: 7.r, color: Colors.white),
      child: InputTextField(
        hintText: hintText,
        paddingVertical: 13.h,
        style: styleTextBlack(),
        keyboardType: TextInputType.number,
        controller: ted,
        borderType: BorderType.typeNone,
      ),
    );
  }
}
