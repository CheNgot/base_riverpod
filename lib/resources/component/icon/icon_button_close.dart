import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/resources/app_colors.dart';
import 'package:base_riverpod/resources/app_decorations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconButtonClose extends StatelessWidget {
  final VoidCallback? onPress;
  final Color? color;

  IconButtonClose({this.onPress, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decorOnlyBorder(color: color ?? colorPrimary, radius: 7.r),
      width: 25.h,
      height: 25.h,
      child: RawMaterialButton(
        onPressed: onPress ??
            () {
              Navigator.maybePop(context);
              // context.read(masterPageViewModel).backPageFromBackStack();
            },
        elevation: 2.0,
        child: Icon(
          Icons.close,
          size: 20.h,
          color: color ?? colorPrimary,
        ),
        shape: const CircleBorder(),
      ),
    );
  }
}
