import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/resources/app_resource.dart';
import 'package:base_riverpod/utils/util/time_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputPickerDateWithLabel extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final bool? isRequire;
  final DateTime? maxTime;
  final DateTime? minTime;

  bool? isEnable;
  String? formatTime;
  final void Function(DateTime)? onSelectedDate;

  InputPickerDateWithLabel({
    this.label,
    this.isRequire,
    this.hintText,
    this.onSelectedDate,
    this.isEnable,
    this.controller,
    this.formatTime, this.maxTime, this.minTime,
  }) {
    if (isEnable == null) this.isEnable = true;
    if (formatTime == null) this.formatTime = DATE_FORMAT_4;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        label == null
            ? SizedBox()
            : Align(
                alignment: Alignment.centerLeft,
                child: RichTextCustom(
                  maxLines: 1,
                  children: [
                    TextSpan(text: label, style: styleTextBlack()),
                    isRequire == true ? TextSpan(text: " *", style: styleTextRed()) : TextSpan(),
                  ],
                ),
              ),
        SizedBox(height: 7.h),
        _buildDatePickerView(),
        // TextFieldNormal(
        //   controller: controller,
        //   borderType: BorderType.typeRoundBorder,
        // ),
      ],
    );
  }

  Widget _buildDatePickerView() {
    if (isEnable == false) {
      return Container(
        color: isEnable == false ? colorBackgroundDefault : null,
        child: IgnorePointer(
          child: InputPickerDate(
            controller: controller,
            formatTime: formatTime,
            maxTime: maxTime,
            minTime: minTime,
            suffixIcon:
                Padding(padding: EdgeInsets.all(8.w), child: Assets.images.icCalendar.image(width: 20.w, height: 20.w)),
            hintText: hintText,
            onSelectedDate: onSelectedDate,
            borderType: BorderType.typeRoundBorder,
          ),
        ),
      );
    } else
      return InputPickerDate(
        controller: controller,
        formatTime: formatTime,
        maxTime: maxTime,
        minTime: minTime,
        suffixIcon:
            Padding(padding: EdgeInsets.all(8.w), child: Assets.images.icCalendar.image(width: 20.w, height: 20.w)),
        hintText: hintText,
        onSelectedDate: onSelectedDate,
        borderType: BorderType.typeRoundBorder,
      );
  }
}
