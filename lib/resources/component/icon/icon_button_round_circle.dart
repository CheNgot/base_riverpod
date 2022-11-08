import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app_colors.dart';
import '../../app_decorations.dart';
import '../../app_textstyle.dart';

class IconButtonRoundCircle extends StatelessWidget {
  VoidCallback? onPress;
  double? size;
  Color borderColor;
  Color iconColor;

  final IconData icon;

  IconButtonRoundCircle({
    this.onPress,
    this.size,
    required this.icon,
    this.borderColor = Colors.white,
    this.iconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPress,
        child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), border: Border.all(width: 2, color: borderColor)),
          child: Icon(
            icon,
            color: iconColor,
            size: size,
          ),
        ));
  }
}
