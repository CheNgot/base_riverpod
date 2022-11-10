import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/resources/app_colors.dart';
import 'package:base_riverpod/resources/app_textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../master_page_view_model.dart';

class BottomBarButton extends StatelessWidget {
  final String text;
  final AssetGenImage? iconData;

  //to adjust size icon because icon PNG by design download size not equal
  final double? iconWidth;
  final double? iconHeight;

  final VoidCallback? onPress;
  final MasterPageTab? tab;
  final int? numberNoti;

  BottomBarButton({required this.text, this.iconData, this.onPress, this.tab, this.iconWidth, this.iconHeight
  ,this.numberNoti});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Padding(
        padding: EdgeInsets.only(top: 7.h, bottom: 7.h),
        child: HookBuilder(builder: (_) {
          final currentTab = useProvider(masterPageViewModel.select((value) => value.tab));
          bool isSelected = tab != null && currentTab == tab;

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            Stack(
            alignment: Alignment.center,
            children: [
              iconData?.image(
                  width: iconWidth ?? 25.h,
                  height: iconHeight ?? 25.h,
                  color: isSelected ? colorPrimary : colorGrey,
                  fit: BoxFit.contain) ??
                  SizedBox(height: 25.h),
              _isNullOrZero()?Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(4.w),
                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                  alignment: Alignment.center,
                  child: Text((numberNoti.toString()),style: styleTextWhite(13.sp),),
                ),
              ): SizedBox()
            ],
          ),
              SizedBox(height: 5.h),
              Text(
                text,
                style: isSelected ? styleTextPrimary(11) : styleTextGrey(11),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          );
        }),
      ),
    );
  }

  _isNullOrZero() {
    if(numberNoti!=null&& (numberNoti??0)!=0){

      return true;
    }
    else{

      return false;
    }
  }
}
