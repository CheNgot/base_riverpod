import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/resources/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconOnline extends StatelessWidget {
  final bool? is_online;
  final double? size;

  IconOnline({this.is_online, this.size});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(width: size ?? 17.h, height: size ?? 17.h, color: is_online == true ? Colors.green : colorGrey),
    );
  }
}
