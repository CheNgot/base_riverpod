import 'package:base_riverpod/resources/app_resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class ItemOrder extends StatelessWidget {
  const ItemOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 10.w),
          CommonImageView(
            width: 170.w,
            height: 170.w,
            imageUrl:
                "https://www.pakainfo.com/wp-content/uploads/2021/09/image-url-for-testing.jpg",
            operation: CommonImageOperation.onlyView,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.w),
              Text("Cafe sữa"),
              SizedBox(height: 10.w),
              Text("35.000đ")
            ],
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Icon(Icons.add_circle, color: colorPrimary),
          ),
          SizedBox(width: 10.w)
        ],
      ),
    );
  }
}
