import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/resources/component/input/input_picker_date.dart';
import 'package:base_riverpod/resources/component/input/text_field_config.dart';
import 'package:base_riverpod/resources/component/input/input_text_field.dart';
import 'package:base_riverpod/utils/util/toast_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_colors.dart';
import '../../app_textstyle.dart';

class IconDelete extends StatelessWidget {
  VoidCallback? onPress;

  IconDelete({this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPress?.call();
      },
      child: Icon(Icons.close, color: Colors.red, size: 23.h),
    );
  }
}
