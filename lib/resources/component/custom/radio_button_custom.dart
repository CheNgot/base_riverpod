import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/shims/dart_ui.dart';
import 'package:base_riverpod/resources/app_resource.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RadioButtonCustom extends StatelessWidget {
  final String text;
  final String? subText;
  final VoidCallback? onTap;
  final bool isSelected;
  final Widget? selectedIcon;
  final Widget? unselectedIcon;
  final Color? backgroundColor;
  TextStyle? textStyle;
  TextStyle? subTextStyle;

  RadioButtonCustom(
      {required this.text,
      this.subText,
      required this.isSelected,
      this.selectedIcon,
      this.unselectedIcon,
      this.textStyle,
      this.subTextStyle,
      this.backgroundColor,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkwellCustom(
      onTap: onTap,
      color: backgroundColor,
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          isSelected ? _buildSelectedIcon() : _buildUnselectedIcon(),
          SizedBox(width: 10.w),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text, style: textStyle ?? styleTextBlack()),
              subText == null ? SizedBox() : SizedBox(height: 3.h),
              subText == null ? SizedBox() : Text(subText ?? "", style: subTextStyle ?? styleTextGrey()),
            ],
          ))
        ],
      ),
    );
  }

  Widget _buildSelectedIcon() {
    if (selectedIcon != null)
      return selectedIcon!;
    else
      return ClipOval(
        child: Container(
          width: 23.w,
          height: 23.w,
          color: colorPrimary,
          child: Center(
            child: ClipOval(
              child: Container(
                color: Colors.white,
                width: 20.w,
                height: 20.w,
                child: Center(
                  child: ClipOval(
                    child: Container(
                      color: colorPrimary,
                      width: 11.w,
                      height: 11.w,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
  }

  Widget _buildUnselectedIcon() {
    if (unselectedIcon != null)
      return unselectedIcon!;
    else
      return ClipOval(
        child: Container(
          width: 23.w,
          height: 23.w,
          color: colorGrey,
          child: Center(
            child: ClipOval(
              child: Container(
                color: Colors.white,
                width: 20.w,
                height: 20.w,
              ),
            ),
          ),
        ),
      );
  }
}
