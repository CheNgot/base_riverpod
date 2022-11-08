import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/resources/component/input/text_field_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_textstyle.dart';

class InputTextFieldPassword extends StatefulWidget {
  final TextEditingController controller;
  final TextStyle? style;
  final BorderType borderType;
  final Widget? prefixIcon;
  final double? prefixIconSize;
  final Widget? suffixIcon;
  final double? suffixIconSize;
  final String? hintText;
  final String? errorText;
  final String? labelText;
  final TextStyle? labelStyle;
  final Color? fillColor;

  // Custom
  final bool? isValidator;
  final double? paddingVertical;
  final double? paddingHorizontal;

  final textFieldFocusNode = FocusNode();

  InputTextFieldPassword({
    required this.controller,
    this.prefixIcon,
    this.hintText,
    this.errorText,
    this.labelText,
    this.style,
    this.labelStyle,
    this.borderType = BorderType.typeUnderLine,
    this.prefixIconSize,
    this.suffixIcon,
    this.suffixIconSize,
    this.isValidator,
    this.fillColor,
    this.paddingVertical,
    this.paddingHorizontal,
  });

  @override
  _InputTextFieldPasswordState createState() => _InputTextFieldPasswordState();
}

class _InputTextFieldPasswordState extends State<InputTextFieldPassword> with TextFieldConfig {
  bool _isHidePassword = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: widget.textFieldFocusNode,
      style: widget.style ?? styleInputText,
      showCursor: true,
      autofocus: false,
      obscureText: _isHidePassword,
      decoration: InputDecoration(
          fillColor: widget.fillColor,
          filled: widget.fillColor != null ? true : null,
          enabledBorder: getEnableBorder(widget.borderType),
          focusedBorder: getFocusBorder(widget.borderType),
          errorBorder: getErrorBorder(widget.borderType),
          focusedErrorBorder: getFocusErrorBorder(widget.borderType),
          focusColor: focusColor,
          prefixIcon: widget.prefixIcon,
          hintStyle: styleHintText,
          hintText: widget.hintText,
          isDense: true,
          contentPadding: EdgeInsets.symmetric(
              vertical: widget.paddingVertical ?? 12.h, horizontal: widget.paddingHorizontal ?? 10.w),
          prefixIconConstraints: BoxConstraints(
              minWidth: widget.prefixIconSize ?? 30.w,
              minHeight: widget.prefixIconSize ?? 30.w,
              maxHeight: widget.prefixIconSize ?? 30.w,
              maxWidth: widget.prefixIconSize ?? 30.w),
          suffixIconConstraints: BoxConstraints(
              minWidth: widget.suffixIconSize ?? 30.w,
              minHeight: widget.suffixIconSize ?? 30.w,
              maxHeight: widget.suffixIconSize ?? 30.w,
              maxWidth: widget.suffixIconSize ?? 30.w),
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: 5.w),
            child: InkWell(
              child: Icon(_isHidePassword ? Icons.visibility : Icons.visibility_off, color: Colors.white, size: 20.h),
              onTap: () {
                widget.textFieldFocusNode.unfocus();

                // Disable text field's focus node request
                widget.textFieldFocusNode.canRequestFocus = false;

                setState(() {
                  _isHidePassword = !_isHidePassword;
                });

                //Enable the text field's focus node request after some delay
                Future.delayed(Duration(milliseconds: 100), () {
                  widget.textFieldFocusNode.canRequestFocus = true;
                });
              },
            ),
          )
          // suffixIcon: IconButton(
          //     icon: Icon(_isHidePassword ? Icons.visibility : Icons.visibility_off, color: Colors.grey, size: 20.h),
          //     onPressed: () {
          //       setState(() {
          //         _isHidePassword = !_isHidePassword;
          //       });
          //     }),
          ),
      controller: widget.controller,
      validator: (value) {
        if (widget.isValidator == false) return null;
        if (value?.isEmpty ?? true) {
          return widget.hintText;
        }
        return null;
      },
    );
  }
}
