import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/resources/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app_textstyle.dart';

class ButtonGradient extends StatelessWidget {
  final String text;
  final VoidCallback? onPress;
  final double? height;
  final double? width;
  final borderRadius;

  ButtonGradient({required this.text, required this.onPress, this.height, this.width, this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPress,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.r)),
      padding: const EdgeInsets.all(0.0),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [colorPrimary, colorPrimaryDark],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(0.8, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
          borderRadius: BorderRadius.circular(borderRadius ?? 7.r),
        ),
        child: Container(
          height: height ?? 43.h,
          width: width ?? double.infinity,
          alignment: Alignment.center,
          child: Text(
            text,
            style: styleTextWhiteBold(),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
