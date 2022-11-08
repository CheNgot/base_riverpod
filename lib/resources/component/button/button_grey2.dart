import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/resources/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_textstyle.dart';

class ButtonGrey2 extends StatelessWidget {
  final String text;
  final VoidCallback? onPress;
  final double? height;
  final double? width;

  ButtonGrey2({required this.text, required this.onPress, this.height, this.width});

  int? currentTimeClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 43.h,
      width: width ?? double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.r),
            side: const BorderSide(color: colorGrey2),
          ),
          primary: colorGrey2,
        ),
        onPressed: () {
          final now = DateTime.now().millisecondsSinceEpoch;
          if (currentTimeClick == null || (now - currentTimeClick! > 1000)) {
            currentTimeClick = now;
            onPress?.call();
          }
          // onPress.call();
        },
        child: Text(text, style: styleTextBlackBold()),
      ),
    );
  }
}
