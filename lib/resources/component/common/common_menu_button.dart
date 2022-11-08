import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/resources/app_colors.dart';
import 'package:base_riverpod/resources/app_decorations.dart';
import 'package:base_riverpod/resources/app_resource.dart';

class CommonMenuButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final height;
  final width;
  final borderRadius;
  final color;

  CommonMenuButton({
    required this.text,
    required this.onPress,
    this.height,
    this.width,
    this.color,
    this.borderRadius,
  });

  int? currentTimeClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: InkwellCustom(
        onTap: onPress,
        radius: borderRadius ?? 7.r,
        color: colorPrimaryLight,
        padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 15.h, bottom: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text(text, style: styleTextPrimaryBold(17))),
            Icon(
              Icons.arrow_forward_ios,
              color: colorPrimary,
              size: 17.h,
            )
          ],
        ),
      ),
    );
  }
}
