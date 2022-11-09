

import 'package:base_riverpod/resources/app_colors.dart';
import 'package:base_riverpod/resources/app_decorations.dart';
import 'package:base_riverpod/resources/component/banner/slide_banner.dart';
import 'package:base_riverpod/ui/home/home_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:hooks_riverpod/all.dart';

class HomeViewBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.h,top: 5.h),
      decoration: decorSolidRound(
          radius: 20.r, color: colorBackgroundDefault, roundCorner: [RoundCorner.bottomLeft, RoundCorner.bottomRight]),
      child: HookBuilder(builder: (context) {
        final listBanner = useProvider(homeViewModel.select((value) => value.listBanners));
        return SlideBanner(listBanner);
      }),
    );
  }
}
