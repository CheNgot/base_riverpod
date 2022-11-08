import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/resources/component/custom/inwell_custom.dart';
import 'package:base_riverpod/resources/component/input/input_picker_date.dart';
import 'package:base_riverpod/resources/component/input/text_field_config.dart';
import 'package:base_riverpod/resources/component/input/input_text_field.dart';
import 'package:base_riverpod/utils/util/toast_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_colors.dart';
import '../../app_textstyle.dart';

class IconMenu extends StatelessWidget {
  VoidCallback? onPress;

  IconMenu({this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkwellCustom(
        color: Colors.white,
        isInkwellCircle: true,
        onTap: () {
          onPress?.call();
        },
        child: Container(
          width: 20.h, height: 20.h,
            child: Center(child: Assets.images.icMenu.image(width: 14.h, height: 14.h, color: colorGrey))));
  }
}
