import 'package:base_riverpod/resources/app_resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class ItemHighLight extends StatelessWidget {
  final VoidCallback? onPress;

  ItemHighLight({this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decorSolidBorder(colorBorder: Colors.white,colorSolid: Colors.white,radius: 10.r),
      height: 330.w,
      width: ScreenUtil().screenWidth - 150.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonImageView(
            imageUrl: Constants.linkImageTest,
            height: 250,
            width: ScreenUtil().screenWidth - 150.w,
            operation: CommonImageOperation.onlyView,
          ),
          SizedBox(height: 10.w),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Coffe"), Text("Miễn phí upSize")],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(5.w),
                    decoration: decorSolidBorder(
                        colorSolid: Colors.green.shade200,
                        colorBorder: Colors.green.shade200,
                        radius: 10.r),
                    child: Center(
                      child: Text("249",style: styleTextGreen(),),
                    ),
                  ),
                  Text("BEAN")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
