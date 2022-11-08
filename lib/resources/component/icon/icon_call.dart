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

class IconCall extends StatelessWidget {
  VoidCallback? onPress;
  Color? background;

  IconCall({this.onPress, this.background});

  @override
  Widget build(BuildContext context) {
    return InkwellCustom(
      color: background ?? Colors.white,
      onTap: () {
        onPress?.call();
      },
      child: Assets.images.icCall.image(width: 23.h, height: 23.h),
    );
  }
}
