import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

decorOnlySolid({Color? color, double? radius}) =>
    BoxDecoration(borderRadius: BorderRadius.circular(radius ?? 10.r), color: color);

decorOnlyBorder({Color? color, double? radius, double? width}) => BoxDecoration(
    border: Border.all(color: color ?? colorGrey, width: width ?? 1),
    borderRadius: BorderRadius.circular(radius ?? 10.r));

decorOnlyBorderBottom({Color? color, double? width, Color? colorSolid}) =>
    BoxDecoration(color: colorSolid, border: Border(bottom: BorderSide(color: color ?? colorGrey2, width: width ?? 1)));

decorOnlyBorderTop({Color? color, double? width, Color? colorSolid}) =>
    BoxDecoration(color: colorSolid, border: Border(top: BorderSide(color: color ?? colorGrey2, width: width ?? 1)));

decorOnlyBorderLeft({Color? color, double? width, Color? colorSolid}) =>
    BoxDecoration(color: colorSolid, border: Border(left: BorderSide(color: color ?? colorGrey2, width: width ?? 1)));

decorOnlyBorderRight({Color? color, double? width, Color? colorSolid}) =>
    BoxDecoration(color: colorSolid, border: Border(right: BorderSide(color: color ?? colorGrey2, width: width ?? 1)));

decorSolidBorder({Color? colorBorder, Color? colorSolid, double? radius, double? borderWidth}) => BoxDecoration(
    border: Border.all(color: colorBorder ?? colorGrey, width: borderWidth ?? 1),
    borderRadius: BorderRadius.circular(radius ?? 10.r),
    color: colorSolid);

enum RoundCorner { topRight, topLeft, bottomRight, bottomLeft }

decorSolidRound({bool? isShadow, required double radius, Color? color, List<RoundCorner?>? roundCorner}) =>
    BoxDecoration(
      color: color,
      borderRadius: roundCorner == null
          ? BorderRadius.all(Radius.circular(radius))
          : BorderRadius.only(
              topRight: roundCorner.firstWhere((e) => e == RoundCorner.topRight, orElse: () => null) != null
                  ? Radius.circular(radius)
                  : Radius.circular(0),
              bottomLeft: roundCorner.firstWhere((e) => e == RoundCorner.bottomLeft, orElse: () => null) != null
                  ? Radius.circular(radius)
                  : Radius.circular(0),
              topLeft: roundCorner.firstWhere((e) => e == RoundCorner.topLeft, orElse: () => null) != null
                  ? Radius.circular(radius)
                  : Radius.circular(0),
              bottomRight: roundCorner.firstWhere((e) => e == RoundCorner.bottomRight, orElse: () => null) != null
                  ? Radius.circular(radius)
                  : Radius.circular(0),
            ),
      boxShadow: (isShadow != true)
          ? null
          : [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1.r,
                blurRadius: 2,
                offset: const Offset(0, 3), // changes position of shadow
              )
            ],
    );

// final decorBottomBorderGrey = const BoxDecoration(
//   border: Border(
//     bottom: BorderSide(width: 1, color: colorGrey),
//   ),
// );
