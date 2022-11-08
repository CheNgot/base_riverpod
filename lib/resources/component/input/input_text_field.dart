import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/resources/component/input/text_field_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../app_textstyle.dart';

class InputTextField extends StatelessWidget with TextFieldConfig {
  final TextEditingController controller;
  final TextStyle? style;
  final Widget? prefixIcon;
  final double? prefixIconSize;
  final Widget? suffixIcon;
  final double? suffixIconSize;
  final String? suffixText;
  final String? hintText;
  final TextStyle? hintStyle;
  final int? maxLines;
  final TextInputType? keyboardType;
  final bool? isReadOnly;
  final TextAlign? textAlign;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onFieldSubmitted;
  final Color? fillColor;
  final int? maxLength;

  // Custom
  final bool? isValidator;
  final BorderType? borderType;
  final String? errorText;
  final bool? isFormatCurrency;
  final double? paddingVertical;
  final double? paddingHorizontal;

  ValueChanged<String>? onChangedDebounce;
  Timer? _debounce;

  InputTextField(
      {required this.controller,
      this.prefixIcon,
      this.suffixIcon,
      this.suffixText,
      this.hintText,
      this.hintStyle,
      this.errorText,
      this.style,
      this.maxLines,
      this.maxLength,
      this.borderType = BorderType.typeUnderLine,
      this.textAlign,
      this.keyboardType = TextInputType.text,
      this.isReadOnly,
      this.isFormatCurrency,
      this.textInputAction,
      this.onFieldSubmitted,
      this.onChangedDebounce,
      this.prefixIconSize,
      this.suffixIconSize,
      this.fillColor,
      this.paddingVertical,
      this.paddingHorizontal,
      this.isValidator});

  String _formatNumber(String s) => NumberFormat.decimalPattern('en').format(int.parse(s));

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isReadOnly ?? false,
      child: TextFormField(
        style: style ?? styleInputText,
        showCursor: true,
        textInputAction: textInputAction,
        onFieldSubmitted: onFieldSubmitted,
        autofocus: false,
        readOnly: isReadOnly ?? false,
        enableInteractiveSelection: !(isReadOnly ?? false),
        maxLines: maxLines,
        maxLength: maxLength,
        keyboardType: isFormatCurrency == true ? TextInputType.number : keyboardType,
        decoration: InputDecoration(
          fillColor: fillColor,
          counterText: "",
          filled: fillColor != null ? true : null,
          enabledBorder: getEnableBorder(borderType),
          focusedBorder: getFocusBorder(borderType),
          errorBorder: getErrorBorder(borderType),
          focusedErrorBorder: getFocusErrorBorder(borderType),
          focusColor: focusColor,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintStyle: hintStyle ?? styleHintText,
          hintText: hintText,
          suffixText: suffixText,
          isDense: true,
          contentPadding:
              EdgeInsets.symmetric(vertical: paddingVertical ?? 12.h, horizontal: paddingHorizontal ?? 10.w),
          prefixIconConstraints: BoxConstraints(
              minWidth: prefixIconSize ?? 30.w,
              minHeight: prefixIconSize ?? 30.w,
              maxHeight: prefixIconSize ?? 30.w,
              maxWidth: prefixIconSize ?? 30.w),
          suffixIconConstraints: BoxConstraints(
              minWidth: suffixIconSize ?? 30.w,
              minHeight: suffixIconSize ?? 30.w,
              maxHeight: suffixIconSize ?? 30.w,
              maxWidth: suffixIconSize ?? 30.w),
          // errorText: widget.errorText,
        ),
        textAlign: textAlign ?? TextAlign.start,
        controller: controller,
        validator: (value) {
          if (isValidator == false) return null;
          if (value?.isEmpty ?? true) {
            return (errorText ?? hintText ?? "empty");
          }
          return null;
        },
        onChanged: isFormatCurrency == true
            ? (string) {
                string = '${_formatNumber(string.replaceAll(',', ''))}';
                controller.value = TextEditingValue(
                  text: string,
                  selection: TextSelection.collapsed(offset: string.length),
                );
                _onChanged(string);
              }
            : _onChanged,
      ),
    );
  }

  _onChanged(String query) {
    if (onChangedDebounce == null) return;
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 1000), () {
      onChangedDebounce?.call(query);
    });
  }
}
