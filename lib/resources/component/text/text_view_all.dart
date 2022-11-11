import 'package:base_riverpod/generated/locale_keys.g.dart';
import 'package:base_riverpod/resources/app_resource.dart';
import 'package:base_riverpod/resources/app_textstyle.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

import '../../app_decorations.dart';
class TextViewAll extends StatelessWidget {
  final VoidCallback? onPress;

  TextViewAll({this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkwellCustom(onTap: (){
      onPress?.call();
    },child: Container(
      decoration: decorSolidRound(radius: 15.r, color: Colors.orange.shade100),
      padding: EdgeInsets.all(10.w),
      child: Center(
        child: Text(LocaleKeys.txt_view_all.tr(),style:  styleTextPrimary()),
      ),
    ));
  }
}
