import 'package:base_riverpod/resources/app_decorations.dart';
import 'package:base_riverpod/resources/app_resource.dart';
import 'package:base_riverpod/resources/component/common/common_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class ItemStore extends StatefulWidget {
  const ItemStore({Key? key}) : super(key: key);

  @override
  State<ItemStore> createState() => _ItemStoreState();
}

class _ItemStoreState extends State<ItemStore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          decorSolidRound(isShadow: true, radius: 10.w, color: Colors.white),
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      margin: EdgeInsets.only(left: 10.w, right: 10.w),
      height: 150.w,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15.w, bottom: 15.w),
            width: 150.w,
            decoration: decorOnlyBorder(radius: 7.r),
            child: Center(
              child: CommonImageView(
                imageUrl:
                    "https://www.pakainfo.com/wp-content/uploads/2021/09/image-url-for-testing.jpg",
                width: 150.w,
                height: 135.w,
                operation: CommonImageOperation.onlyView,
              ),
            ),
          ),
          SizedBox(width: 15.w),
          Padding(
            padding: EdgeInsets.only(top: 15.w, bottom: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Coffe ABC"),
                SizedBox(height: 5.w),
                Text("123 Đâu đó"),
                Spacer(),
                Text("Cách đây 10Km")
              ],
            ),
          )
        ],
      ),
    );
  }
}
