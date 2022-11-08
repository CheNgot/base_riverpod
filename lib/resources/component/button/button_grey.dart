import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_textstyle.dart';

class ButtonGrey extends StatelessWidget {
  final String text;
  final VoidCallback? onPress;
  final double? height;
  final double? width;


  ButtonGrey({required this.text, this.onPress, this.height, this.width});

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
            side: const BorderSide(color: Color(0xFF8F8F8F)),
          ),
          primary: Colors.grey,
        ),
        onPressed: () {
          final now = DateTime.now().millisecondsSinceEpoch;
          if (currentTimeClick == null || (now - currentTimeClick! > 1000)) {
            currentTimeClick = now;
            onPress?.call();
          }
          // onPress.call();
        },
        child: Text(text, style: styleTextWhite()),
      ),
    );
  }
}
