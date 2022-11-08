import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/data/provider/provider.dart';
import 'package:base_riverpod/resources/app_resource.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class IconButtonLogout extends StatelessWidget {
  final VoidCallback? onPress;

  IconButtonLogout({this.onPress});

  @override
  Widget build(BuildContext context) {
    final hive = context.read(hiveProvider);
    return SizedBox(
      width: 25.h,
      height: 25.h,
      child: RawMaterialButton(
        onPressed: onPress ??
            () {
              hive.clearData();
              Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil(Constants.loginPage, (route) => false);
            },
        elevation: 2.0,
        child: Icon(
          Icons.logout,
          size: 20.h,
          color: Colors.white,
        ),
        shape: const CircleBorder(),
      ),
    );
  }
}
