import 'package:base_riverpod/generated/locale_keys.g.dart';
import 'package:base_riverpod/resources/app_resource.dart';
import 'package:base_riverpod/resources/component/text/text_view_all.dart';
import 'package:base_riverpod/ui/promotion/component/redeem_offer/item_highlight.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
class RedeemOffer extends StatefulWidget {


  @override
  State<RedeemOffer> createState() => _RedeemOfferState();
}

class _RedeemOfferState extends State<RedeemOffer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.w),
      padding: EdgeInsets.all(5.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Text(LocaleKeys.txt_highlight.tr(),style: styleTextBlackBold(15))),
                TextViewAll(onPress: (){
                  print("view all hight light");
                })

              ],
            ),
            _buildListHighLight(),
            SizedBox(height: 10.w),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Text(LocaleKeys.txt_highlight.tr(),style: styleTextBlackBold(15))),
                TextViewAll(onPress: (){
                  print("view all hight light");
                })

              ],
            ),
            _buildListHighLight(),
            SizedBox(height: 10.w),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Text(LocaleKeys.txt_highlight.tr(),style: styleTextBlackBold(15))),
                TextViewAll(onPress: (){
                  print("view all hight light");
                })

              ],
            ),
            _buildListHighLight()

          ],
        ),
      ),
    );
  }

  _buildListHighLight() {
    return SizedBox(
      height: 330.w,
      width: ScreenUtil().screenWidth,
      child: ListView.separated(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context , int index){
        return ItemHighLight(onPress: (){});
      }, separatorBuilder:(BuildContext context , int index){
        return SizedBox(width: 15.w);
      }, itemCount: 10),
    );
  }
}

