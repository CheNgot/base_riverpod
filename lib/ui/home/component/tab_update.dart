import 'package:flutter/material.dart';
import 'package:base_riverpod/resources/app_resource.dart';
import 'package:base_riverpod/ui/home/component/item_home.dart';
import 'package:base_riverpod/ui/home/home_view_model.dart';
import 'package:flutter_riverpod/src/provider.dart';
class TabUpdate extends StatefulWidget {
  const TabUpdate({Key? key}) : super(key: key);

  @override
  State<TabUpdate> createState() => _TabUpdateState();
}

class _TabUpdateState extends State<TabUpdate> {
  GlobalKey<ListViewLoadMoreState> listKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h,left: 15.w,right: 15.w),
      child: GridViewLoadMore(
        childAspectRatio: 0.95,
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        key: listKey,
        childView: (item, index) {
          return ItemHome();
        },
        childViewShimmer: SizedBox(),
        loadData: (page) => context.read(homeViewModel).loadSpecialOffer(page),
      ),
    );
  }
}