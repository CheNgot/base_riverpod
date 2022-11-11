import 'package:base_riverpod/resources/app_resource.dart';
import 'package:flutter/material.dart';

class ViewBean extends StatelessWidget {
  const ViewBean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.w,
      width: ScreenUtil().screenWidth,
      decoration: decorOnlySolid(radius: 10.r,color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              decoration: decorSolidBorder(
                radius: 10.w,
              ),
              height: 300.w,
              width: ScreenUtil().screenWidth,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      decoration: decorSolidBorder(
                          colorSolid: Colors.orange.shade400,
                          colorBorder: Colors.orange.shade400,
                          radius: 10.r),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Quốc Thái", style: styleTextWhiteBold()),
                        Text("0 BEAN - Mới", style: styleTextWhiteBold()),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 10,
                    right: 10,
                    child: Container(
                      height: 200.w,
                      width: ScreenUtil().screenWidth,
                      margin: EdgeInsets.all(10.w),
                      decoration: decorOnlySolid(color: Colors.white,radius: 10.r),
                    ),
                  ),
                ],
              )),
          SizedBox(height: 10.w),
          Text("Cần 100 BEAN nữa để thăng hạng")

        ],
      ),
    );
  }
}
