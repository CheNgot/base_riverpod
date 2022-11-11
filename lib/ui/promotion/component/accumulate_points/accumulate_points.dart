import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
class AccumulatePoints extends StatefulWidget {
  const AccumulatePoints({Key? key}) : super(key: key);

  @override
  State<AccumulatePoints> createState() => _AccumulatePointsState();
}

class _AccumulatePointsState extends State<AccumulatePoints> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.w,
      width: 100.w,
      color: Colors.pink,
    );
  }
}
