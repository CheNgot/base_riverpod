import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFillRemainScrollView extends StatelessWidget {
  List<Widget> children = const <Widget>[];

  CustomFillRemainScrollView({required this.children});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: true,
          child: Column(
            children: children,
          ),
        ),
      ],
    );
  }
}
