import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_resource.dart';

class CheckBoxCustom extends StatelessWidget {
  String? label;
  TextStyle? labelStyle;
  String? subLabel;
  GestureTapCallback? onTap;
  bool? value;

  CheckBoxCustom({this.label, this.onTap, this.value, this.subLabel, this.labelStyle});

  @override
  Widget build(BuildContext context) {
    return InkwellCustom(
      onTap: onTap,
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(
            height: 20.h,
            width: 20.h,
            child: IgnorePointer(
              child: Checkbox(
                checkColor: Colors.white,
                activeColor: colorPrimary,
                value: value,
                onChanged: (bool? value) {},
              ),
            ),
          ),
          SizedBox(width: 10.w),
          Text(label ?? "", style: labelStyle ?? styleTextBlack()),
          subLabel != null ? Text(" ($subLabel)", style: styleTextBlack()) : SizedBox()
        ],
      ),
    );
  }
}
