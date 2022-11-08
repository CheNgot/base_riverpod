import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class IconButtonBack extends StatelessWidget {
  final VoidCallback? onPress;

  IconButtonBack({this.onPress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 25.h,
      height: 25.h,
      child: RawMaterialButton(
        onPressed: onPress ?? () {
          Navigator.maybePop(context);
          // context.read(masterPageViewModel).backPageFromBackStack();
        },
        elevation: 2.0,
        child: Icon(
          // Icons.arrow_back,
          Icons.arrow_back_ios,
          size: 20.h,
          color: Colors.white,
        ),
        shape: const CircleBorder(),
      ),
    );
  }
}
