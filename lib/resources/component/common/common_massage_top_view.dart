import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/gen/fonts.gen.dart';
import 'package:base_riverpod/resources/app_colors.dart';
import 'package:base_riverpod/resources/app_decorations.dart';
import 'package:base_riverpod/resources/app_resource.dart';

class CommonMassageTopView extends StatelessWidget {
  CommonMassageTopView();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: colorPrimary,
          height: 0.4.sw,
          child: Center(
            child: Assets.images.imgTopLogin.image(width: 0.9.sw, height: 0.35.sw, fit: BoxFit.fitHeight),
          ),
        )
      ],
    );
  }
}
