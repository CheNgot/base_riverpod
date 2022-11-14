import 'package:base_riverpod/resources/app_resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
class ViewCate extends StatelessWidget {
  const ViewCate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.w),
      padding: EdgeInsets.all(10.w),
      height: 80.w,
      width: ScreenUtil().screenWidth,
      decoration: decorOnlySolid(color: Colors.white,radius: 10.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.account_balance_wallet_sharp),
          SizedBox(height: 10.w),
          Text("Đổi ưu đãi")
        ],
      ),
    );
  }
}
