import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/resources/component/input/text_field_config.dart';
import 'package:base_riverpod/utils/util/time_util.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../app_colors.dart';
import '../../app_textstyle.dart';

class InputPickerDate extends StatelessWidget with TextFieldConfig {
  TextEditingController? controller;
  final void Function(DateTime)? onSelectedDate;
  final String? formatTime;
  final Widget? prefixIcon;
  final double? prefixIconSize;
  final Widget? suffixIcon;
  final double? suffixIconSize;
  final String? hintText;
  final String? labelText;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextStyle? style;
  final Color? fillColor;
  final DateTime? maxTime;
  final DateTime? minTime;

  // Custom
  final bool? isValidator;
  bool? isAutoSetTextController = true;
  final BorderType? borderType;
  final String? errorText;
  final TextStyle? labelStyle;
  final double? paddingVertical;
  final double? paddingHorizontal;

  InputPickerDate({
    TextEditingController? controller,
    this.prefixIcon,
    this.hintText,
    this.errorText,
    this.labelText,
    this.labelStyle,
    this.maxLines,
    this.onSelectedDate,
    this.formatTime,
    required this.borderType,
    this.style,
    this.textAlign,
    this.suffixIcon,
    this.prefixIconSize,
    this.suffixIconSize,
    this.fillColor,
    this.paddingVertical,
    this.isValidator,
    this.paddingHorizontal,
    this.maxTime,
    this.minTime,
  }) {
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
      initDateTime = DateFormat(formatTime ?? DATE_FORMAT_4).parse(controller!.text);
    } else {
      initDateTime = DateTime.now();
    }

    return InkWell(
      onTap: () {
        DatePicker.showDatePicker(
          context,
          locale: LocaleType.vi,
          showTitleActions: true,
          minTime: minTime ?? DateTime(1900, 1, 1),
          maxTime: maxTime ?? DateTime(2200, 1, 1),
          currentTime: initDateTime,
          theme: DatePickerTheme(
            headerColor: colorPrimary,
            backgroundColor: Colors.white,
            itemStyle: styleTextPrimaryBold(),
            doneStyle: styleTextWhiteBold(),
          ),
          // onChanged: onSelectedDate,
          onConfirm: (dateTime) {
            WidgetsBinding.instance?.focusManager.primaryFocus?.unfocus();
            if (isAutoSetTextController == true)
              controller?.text = DateFormat(formatTime ?? DATE_FORMAT_1).format(dateTime);
            onSelectedDate?.call(dateTime);
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
              controller: controller,
              textAlign: textAlign ?? TextAlign.start,
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
          Positioned.fill(right: 10.w, child: Align(alignment: Alignment.centerRight, child: suffixIcon ?? SizedBox())),
          Positioned.fill(right: 10.w, child: Align(alignment: Alignment.centerLeft, child: prefixIcon ?? SizedBox()))
        ],
      )
    );
  }
}
