import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/resources/app_resource.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_textstyle.dart';

class InputPickerTimeWithLabel extends StatefulWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final bool? isRequire;
  final bool? isEnable;

  final void Function(DateTime)? onSelectedTime;

  InputPickerTimeWithLabel({
    this.controller,
    this.label,
    this.isRequire,
    this.hintText,
    this.onSelectedTime,
    this.isEnable = true,
  });

  @override
  State<InputPickerTimeWithLabel> createState() => _InputPickerTimeWithLabelState();
}

class _InputPickerTimeWithLabelState extends State<InputPickerTimeWithLabel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        widget.label == null
            ? SizedBox()
            : Align(
                alignment: Alignment.centerLeft,
                child: RichTextCustom(
                  maxLines: 1,
                  children: [
                    TextSpan(text: widget.label, style: styleTextBlack()),
                    widget.isRequire == true ? TextSpan(text: " *", style: styleTextRed()) : TextSpan(),
                  ],
                ),
              ),
        SizedBox(height: 4.h),
        _buildTimePickerView(),
        // TextFieldNormal(
        //   controller: controller,
        //   borderType: BorderType.typeRoundBorder,
        // ),
      ],
    );
  }

  Widget _buildTimePickerView() {
    if (widget.isEnable == false) {
      return Container(
        color: widget.isEnable == false ? colorBackgroundDefault : null,
        child: IgnorePointer(
          child: InputPickerTime(
            isValidator: widget.isRequire ?? false,
            controller: widget.controller,
            suffixIcon: Assets.images.icClock.image(width: 20.w, height: 20.w, color: colorGrey),
            hintText: widget.hintText,
            onSelectedTime: widget.onSelectedTime,
            borderType: BorderType.typeRoundBorder,
          ),
        ),
      );
    } else
      return InputPickerTime(
        isValidator: widget.isRequire ?? false,
        controller: widget.controller,
        suffixIcon: (widget.controller?.text.isEmpty ?? true)
            ? Assets.images.icClock.image(width: 20.w, height: 20.w, color: colorGrey)
            : InkwellCustom(
                onTap: () {
                  widget.controller?.clear();
                  setState(() {});
                },
                color: Colors.white,
                child: Icon(Icons.close, color: Colors.red)),
        hintText: widget.hintText,
        onSelectedTime: (time) {
          widget.onSelectedTime?.call(time);
          setState(() {});
        },
        borderType: BorderType.typeRoundBorder,
      );
  }
}
