import 'package:base_riverpod/resources/app_resource.dart';
import 'package:flutter/material.dart';

class TypePromotion extends StatelessWidget {
  final bool is_selected;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: is_selected
          ? decorSolidRound(radius: 15.r, color: Colors.orange.shade100)
          : decorSolidRound(radius: 15.r, color: Colors.white),
      padding: EdgeInsets.all(10.w),
      child: Center(
        child: Text(name,style: is_selected? styleTextPrimary():styleTextBlack()),
      ),
    );
  }

  TypePromotion({required this.is_selected, required this.name});
}
