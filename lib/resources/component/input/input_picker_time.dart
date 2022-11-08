import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/resources/app_resource.dart';
import 'package:base_riverpod/resources/component/input/text_field_config.dart';
import 'package:base_riverpod/utils/util/time_util.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../app_colors.dart';
import '../../app_textstyle.dart';

class InputPickerTime extends StatelessWidget with TextFieldConfig {
  TextEditingController? controller;

  final void Function(DateTime)? onSelectedTime;
  final String? formatTime;
  final Widget? prefixIcon;
  final double? prefixIconSize;
  final Widget? suffixIcon;
  final double? suffixIconSize;
  final String? hintText;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextStyle? style;
  final Color? fillColor;
  final double? paddingVertical;
  final double? paddingHorizontal;

  // Custom
  bool? isAutoSetTextController = true;
  final BorderType? borderType;
  final String? errorText;
  final bool? isValidator;

  InputPickerTime(
      {controller,
      this.prefixIcon,
      this.hintText,
      this.errorText,
      this.maxLines,
      this.onSelectedTime,
      this.formatTime,
      this.isAutoSetTextController,
      required this.borderType,
      this.style,
      this.textAlign,
      this.prefixIconSize,
      this.suffixIcon,
      this.suffixIconSize,
      this.fillColor,
      this.paddingVertical,
      this.isValidator,
      this.paddingHorizontal}) {
    if (controller == null) {
      this.controller = TextEditingController();
    } else
      this.controller = controller;
    if (isAutoSetTextController == null) this.isAutoSetTextController = true;
  }

  @override
  Widget build(BuildContext context) {
    var initDateTime;
    if (controller?.text.isNotEmpty ?? false) {
      initDateTime = DateFormat(formatTime ?? DATE_FORMAT_6).parse(controller!.text);
    } else {
      initDateTime = DateTime.now();
    }

    return InkWell(
        onTap: () {
          DatePicker.showTimePicker(
            context,
            locale: LocaleType.vi,
            showSecondsColumn: false,
            showTitleActions: true,
            currentTime: initDateTime,
            theme: DatePickerTheme(
              headerColor: colorPrimary,
              backgroundColor: Colors.white,
              itemStyle: styleTextPrimaryBold(),
              doneStyle: styleTextWhiteBold(),
            ),
            // onChanged: onSelectedDate,
            onConfirm: (dateTime) {
              if (isAutoSetTextController == true)
                controller?.text = DateFormat(formatTime ?? DATE_FORMAT_6).format(dateTime);
              onSelectedTime?.call(dateTime);
            },
          );
        },
        child: Stack(
          children: [
            IgnorePointer(
              ignoring: true,
              child: TextFormField(
                autofocus: false,
                readOnly: true,
                enableSuggestions: false,
                enableInteractiveSelection: false,
                validator: (v) {
                  if (isValidator == false) return null;
                  return (controller?.text.isEmpty ?? false) ? hintText : null;
                },
                style: style ?? styleInputText,
                textAlign: textAlign ?? TextAlign.start,
                controller: controller,
                decoration: InputDecoration(
                  fillColor: fillColor,
                  filled: fillColor != null ? true : null,
                  enabledBorder: getEnableBorder(borderType),
                  focusedBorder: getFocusBorder(borderType),
                  errorBorder: getErrorBorder(borderType),
                  focusedErrorBorder: getFocusErrorBorder(borderType),
                  focusColor: focusColor,
                  // prefixIcon: prefixIcon,
                  // suffixIcon: suffixIcon,
                  hintStyle: styleHintText,
                  hintText: hintText,
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: paddingVertical ?? 12.h, horizontal: paddingHorizontal ?? 10.w),
                  // prefixIconConstraints: BoxConstraints(
                  //     minWidth: prefixIconSize ?? 30.w,
                  //     minHeight: prefixIconSize ?? 30.w,
                  //     maxHeight: prefixIconSize ?? 30.w,
                  //     maxWidth: prefixIconSize ?? 30.w),
                  // suffixIconConstraints: BoxConstraints(
                  //     minWidth: suffixIconSize ?? 30.w,
                  //     minHeight: suffixIconSize ?? 30.w,
                  //     maxHeight: suffixIconSize ?? 30.w,
                  //     maxWidth: suffixIconSize ?? 30.w),
                  // contentPadding: EdgeInsets.zero,
                ),
              ),
            ),
            Positioned.fill(
                right: 10.w, child: Align(alignment: Alignment.centerRight, child: suffixIcon ?? SizedBox())),
            Positioned.fill(left: 10.w, child: Align(alignment: Alignment.centerLeft, child: prefixIcon ?? SizedBox()))
          ],
        ));
  }
}
