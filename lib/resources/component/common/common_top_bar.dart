import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/gen/fonts.gen.dart';
import 'package:base_riverpod/resources/app_colors.dart';
import 'package:base_riverpod/resources/app_decorations.dart';
import 'package:base_riverpod/resources/app_resource.dart';

class CommonTopBar extends StatelessWidget {
  final String text;
  final Widget? suffixIcon; // 25.h

  CommonTopBar({required this.text, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [colorPrimary, colorPrimaryDark],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.8, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      padding: EdgeInsets.only(top: 33.h, bottom: 17.h, left: 15.w, right: 15.w),
      width: double.infinity,
      child: Row(
        children: [
          IconButtonBack(),
          SizedBox(width: 15.w),
          Expanded(
              child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: styleTextWhiteBold(18),
            textAlign: TextAlign.start,
          )),
          suffixIcon ?? SizedBox(),
        ],
      ),
    );
  }
}
