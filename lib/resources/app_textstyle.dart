import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/gen/fonts.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

TextStyle styleTextTitleWhite = TextStyle(
  fontFamily: FontFamily.roboto,
  fontSize: 18.sp,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

TextStyle styleTextTitlePrimary = TextStyle(
  fontFamily: FontFamily.roboto,
  fontSize: 18.sp,
  fontWeight: FontWeight.bold,
  color: colorPrimary,
);

// ===============================  >>> PRIMARY
TextStyle styleTextPrimary([double? size]) => TextStyle(
  fontFamily: FontFamily.roboto,
  fontSize: size != null ? size.sp : 14.sp,
  color: colorPrimary,
  fontWeight: FontWeight.normal,
);

TextStyle styleTextPrimaryBold([double? size]) => TextStyle(
  fontFamily: FontFamily.roboto,
  fontSize: size != null ? size.sp : 14.sp,
  color: colorPrimary,
  fontWeight: FontWeight.bold,
);

// ===============================  >>> PRIMARY DARK
TextStyle styleTextPrimaryDark([double? size]) => TextStyle(
      fontFamily: FontFamily.roboto,
      fontSize: size != null ? size.sp : 14.sp,
      color: colorPrimaryDark,
      fontWeight: FontWeight.normal,
    );

TextStyle styleTextPrimaryDarkBold([double? size]) => TextStyle(
      fontFamily: FontFamily.roboto,
      fontSize: size != null ? size.sp : 14.sp,
      color: colorPrimaryDark,
      fontWeight: FontWeight.bold,
    );

// ===============================  >>> WHITE
TextStyle styleTextWhite([double? size]) => TextStyle(
      fontFamily: FontFamily.roboto,
      fontSize: size != null ? size.sp : 14.sp,
      color: Colors.white,
      fontWeight: FontWeight.normal,
    );

TextStyle styleTextWhiteBold([double? size]) => TextStyle(
      fontFamily: FontFamily.roboto,
      fontSize: size != null ? size.sp : 14.sp,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );

// ===============================  >>> GREY
TextStyle styleTextGrey([double? size]) => TextStyle(
      fontFamily: FontFamily.roboto,
      fontSize: size != null ? size.sp : 14.sp,
      color: colorGrey,
      fontWeight: FontWeight.normal,
    );

TextStyle styleTextGrey2([double? size]) => TextStyle(
      fontFamily: FontFamily.roboto,
      fontSize: size != null ? size.sp : 14.sp,
      color: colorGrey3,
      fontWeight: FontWeight.normal,
    );

TextStyle styleTextGreyBold([double? size]) => TextStyle(
      fontFamily: FontFamily.roboto,
      fontSize: size != null ? size.sp : 14.sp,
      color: colorGrey,
      fontWeight: FontWeight.bold,
    );

TextStyle styleTextGrey2Bold([double? size]) => TextStyle(
  fontFamily: FontFamily.roboto,
  fontSize: size != null ? size.sp : 14.sp,
  color: colorGrey3,
  fontWeight: FontWeight.normal,
);

// ===============================  >>> GREY
TextStyle styleTextGreyDark([double? size]) => TextStyle(
      fontFamily: FontFamily.roboto,
      fontSize: size != null ? size.sp : 14.sp,
      color: colorTextGreyDark,
      fontWeight: FontWeight.normal,
    );

TextStyle styleTextGreyDarkBold([double? size]) => TextStyle(
      fontFamily: FontFamily.roboto,
      fontSize: size != null ? size.sp : 14.sp,
      color: colorTextGreyDark,
      fontWeight: FontWeight.bold,
    );

// ===============================  >>> Black
TextStyle styleTextBlack([double? size]) => TextStyle(
      fontFamily: FontFamily.roboto,
      fontSize: size != null ? size.sp : 14.sp,
      color: Colors.black,
      fontWeight: FontWeight.normal,
    );

TextStyle styleTextBlackBold([double? size]) => TextStyle(
      fontFamily: FontFamily.roboto,
      fontSize: size != null ? size.sp : 14.sp,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );

// ===============================  >>> Red
TextStyle styleTextRed([double? size]) => TextStyle(
      fontFamily: FontFamily.roboto,
      fontSize: size != null ? size.sp : 14.sp,
      color: Color(0xFFFF0000),
      fontWeight: FontWeight.normal,
    );

TextStyle styleTextRedBold([double? size]) => TextStyle(
      fontFamily: FontFamily.roboto,
      fontSize: size != null ? size.sp : 14.sp,
      color: Color(0xFFFF0000),
      fontWeight: FontWeight.bold,
    );

TextStyle styleTextGreen([double? size]) => TextStyle(
  fontFamily: FontFamily.roboto,
  fontSize: size != null ? size.sp : 14.sp,
  color: Color(0xFF008D13),
  fontWeight: FontWeight.normal,
);

TextStyle styleTextGreenBold([double? size]) => TextStyle(
  fontFamily: FontFamily.roboto,
  fontSize: size != null ? size.sp : 14.sp,
  color: Color(0xFF008D13),
  fontWeight: FontWeight.bold,
);

TextStyle styleTextBlue([double? size]) => TextStyle(
      fontFamily: FontFamily.roboto,
      fontSize: size != null ? size.sp : 14.sp,
      color: Colors.blueAccent,
      fontWeight: FontWeight.normal,
    );

TextStyle styleTextBlueBold([double? size]) => TextStyle(
      fontFamily: FontFamily.roboto,
      fontSize: size != null ? size.sp : 14.sp,
      color: Colors.blueAccent,
      fontWeight: FontWeight.bold,
    );

TextStyle styleTextLink([double? size]) => TextStyle(
      fontFamily: FontFamily.roboto,
      fontSize: size != null ? size.sp : 14.sp,
      color: Colors.blueAccent,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.normal,
    );

TextStyle styleHintText = TextStyle(
  fontFamily: FontFamily.roboto,
  color: colorTextHint,
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
);

TextStyle styleInputText = TextStyle(
  fontFamily: FontFamily.roboto,
  fontWeight: FontWeight.normal,
  color: Colors.white,
  fontSize: 14.sp,
);
