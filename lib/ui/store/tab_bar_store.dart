import 'package:base_riverpod/resources/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class TabBarStore extends StatelessWidget {
  const TabBarStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.white, Colors.white],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.8, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      padding:
          EdgeInsets.only(top: 33.h, bottom: 17.h, left: 15.w, right: 15.w),
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(width: 15.w),
          Expanded(
              child: Text(
            "Cửa hàng",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: styleTextBlack(18),
            textAlign: TextAlign.start,
          )),
          Icon(Icons.map_outlined),
          Text("Bản đồ")
        ],
      ),
    );
  }
}
