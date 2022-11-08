import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/resources/component/input/input_picker_date.dart';
import 'package:base_riverpod/resources/component/input/text_field_config.dart';
import 'package:base_riverpod/resources/component/input/input_text_field.dart';
import 'package:base_riverpod/utils/util/toast_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_colors.dart';
import '../../app_decorations.dart';
import '../../app_textstyle.dart';

class IconCircle extends StatelessWidget {
  VoidCallback? onPress;
  double? size;
  Color? outsideCircleColor;
  Color? insideCircleColor;

  IconCircle({this.onPress, this.size, this.outsideCircleColor, this.insideCircleColor});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: size != null ? (size! + 1.3.w) : 25.w,
        height: size != null ? (size! + 1.3.w) : 25.w,
        decoration: decorSolidRound(radius: 0.r, color: outsideCircleColor ?? colorGrey, isShadow: true),
        child: Center(
          child: ClipOval(
            child: Container(
              color: insideCircleColor ?? Colors.white,
              width: size ?? 13.w,
              height: size ?? 13.w,
            ),
          ),
        ),
      ),
    );
  }
}
