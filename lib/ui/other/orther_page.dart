import 'package:base_riverpod/resources/app_resource.dart';
import 'package:base_riverpod/ui/other/other_view_model.dart';
import 'package:base_riverpod/ui/other/tab_bar_other.dart';
import 'package:base_riverpod/ui/promotion/component/accumulate_points/view_cate.dart';
import 'package:flutter/material.dart';

class OtherPage extends StatefulWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  State<OtherPage> createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseContainer(
        provider: otherViewModel,
        child: Container(
          color: Colors.grey.shade300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TabBarOther(),
              Expanded(child: _buildMainView()),
            ],
          ),
        ),
      ),
    );
  }

  _buildMainView() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildWidgetUtilities(),
            _buildWidgetSupport(),
            _buildWidgetAccount(),
          ],
        ),
      ),
    );
  }

  _buildWidgetUtilities() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.w),
        Text(LocaleKeys.txt_utilities.tr(),style: styleTextBlackBold(18)),
        SizedBox(height: 10.w),
        ViewCate(text: "Lịch sử đơn hàng",
        onPress: (){
          Navigator.of(context,rootNavigator: true).pushNamed(Constants.orderHistoryPage);
        }),
        ViewCate()
      ],
    );
  }

  _buildWidgetSupport() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 15.w),
        Text(LocaleKeys.txt_support.tr(),style: styleTextBlackBold(18)),
        SizedBox(height: 10.w),
        Container(
          decoration: decorOnlySolid(color: Colors.white,radius: 10.r),
          padding: EdgeInsets.only(left: 10.w,top: 5.w,bottom: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildItem("Đánh giá đơn hàng", Assets.images.icCategory),
              Divider(color: Colors.grey.shade200),
              _buildItem("Đánh giá đơn hàng", Assets.images.icCategory),
              Divider(color: Colors.grey.shade200),
              _buildItem("Đánh giá đơn hàng", Assets.images.icCategory),
              Divider(color: Colors.grey.shade200)
            ],
          ),
        )
      ],
    );
  }

  _buildItem(String s, AssetGenImage icCategory) {
    return InkwellCustom(child: Row(
      children: [
        Container(
          height: 30.w,
          width: 30.w,
          child: Center(child: Image(image: icCategory)),
        ),
        SizedBox(width: 15.w),
        Expanded(child: Text(s,style: styleTextBlack())),
        Icon(Icons.arrow_forward_ios_rounded,size: 15,),
        SizedBox(width: 15.w),


      ],
    ),onTap: (){

    },);
  }

  _buildWidgetAccount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 15.w),
        Text(LocaleKeys.txt_account.tr(),style: styleTextBlackBold(18)),
        SizedBox(height: 10.w),
        Container(
          decoration: decorOnlySolid(color: Colors.white,radius: 10.r),
          padding: EdgeInsets.only(left: 10.w,top: 5.w,bottom: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildItem("Đánh giá đơn hàng", Assets.images.icCategory),
              Divider(color: Colors.grey.shade200),
              _buildItem("Đánh giá đơn hàng", Assets.images.icCategory),
              Divider(color: Colors.grey.shade200),
              _buildItem("Đánh giá đơn hàng", Assets.images.icCategory),
              Divider(color: Colors.grey.shade200)
            ],
          ),
        )
      ],
    );
  }
}
