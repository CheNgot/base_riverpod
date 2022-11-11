import 'package:base_riverpod/ui/promotion/component/accumulate_points/view_bean.dart';
import 'package:base_riverpod/ui/promotion/component/accumulate_points/view_cate.dart';
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
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ViewBean(),
            SizedBox(height: 10.w),
            _buildGridView(),
          ],
        ),
      ),
    );
  }

  _buildGridView() {
    return GridView(
      primary: false,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2.1
      ),
      children: [
        ViewCate(),
        ViewCate(),
        ViewCate(),
        ViewCate(),
      ],
    );
  }
}
