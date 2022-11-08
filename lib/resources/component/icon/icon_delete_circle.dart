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

class IconDeleteCircle extends StatelessWidget {
  VoidCallback? onPress;
  double? size;

  IconDeleteCircle({this.onPress, this.size});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: size != null ? (size! + 1.3.w) : 25.w,
        height: size != null ? (size! + 1.3.w) : 25.w,
        decoration: decorSolidRound(radius: 0.r, color: colorGrey, isShadow: true),
        child: Material(
          color: Colors.white,
          child: InkWell(
            onTap: onPress,
            child: Container(
              width: size ?? 24.w,
              height: size ?? 24.w,
              child: Center(child: Icon(Icons.close, size: 15.h, color: colorRedDark)),
            ),
          ),
        ),
      ),
    );
  }
}
