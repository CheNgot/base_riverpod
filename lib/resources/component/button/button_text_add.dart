import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/resources/app_colors.dart';
import 'package:base_riverpod/resources/app_textstyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonTextAdd extends StatelessWidget {
  final VoidCallback? onPress;

  ButtonTextAdd({
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.add, size: 15.h, color: colorPrimary),
          SizedBox(width: 5.w),
          Text("Thêm", style: styleTextPrimaryBold()),
        ],
      ),
    );
  }
}
