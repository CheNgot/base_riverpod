import 'package:base_riverpod/resources/app_resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
class ViewCate extends StatelessWidget {
  const ViewCate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.w),
      height: 80.w,
      width: ScreenUtil().screenWidth/2,
      decoration: decorOnlySolid(color: Colors.white,radius: 10.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.account_balance_wallet_sharp),
          Text("Đổi ưu đãi")
        ],
      ),
    );
  }
}
