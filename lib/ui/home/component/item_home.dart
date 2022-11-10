import 'package:base_riverpod/resources/app_resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class ItemHome extends StatelessWidget {
  const ItemHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      height: 200.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonImageView(
              width: 150.w,
              height: 150.w,
              imageUrl:
                  "https://www.pakainfo.com/wp-content/uploads/2021/09/image-url-for-testing.jpg",
              operation: CommonImageOperation.onlyView),
          SizedBox(height: 10.w),
          Text(
            "MÔ TẢ DÀI DÀI DÀI DÀI DÀI DÀI DÀI DÀI",
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
