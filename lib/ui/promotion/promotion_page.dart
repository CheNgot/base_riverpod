import 'package:base_riverpod/resources/app_resource.dart';
import 'package:base_riverpod/ui/promotion/component/accumulate_points/accumulate_points.dart';
import 'package:base_riverpod/ui/promotion/component/redeem_offer/redeem_offer.dart';
import 'package:base_riverpod/ui/promotion/component/tab_bar_promotion.dart';
import 'package:base_riverpod/ui/promotion/component/type_promotion.dart';
import 'package:base_riverpod/ui/promotion/promotion_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PromotionPage extends StatefulWidget {
  const PromotionPage({Key? key}) : super(key: key);

  @override
  State<PromotionPage> createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseContainer(
        provider: promotionViewModel,
        child: Container(
          color: Colors.grey.shade300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [TabBarPromotion(), _buildPromotions(),
            _buildPage()],
          ),
        ),
      ),
    );
  }

  _buildPromotions() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10.w),
      child: HookBuilder(
        builder: (_) {
          final type =
              useProvider(promotionViewModel.select((value) => value.type));
          return Row(
            children: [
              InkwellCustom(
                  child: TypePromotion(
                      is_selected: type == 1 ? true : false,
                      name: LocaleKeys.txt_accumulate_points.tr()),
                  onTap: () {
                    final viewModel = context.read(promotionViewModel);
                    viewModel.type = 1;
                    viewModel.notifyListeners();
                  }),
              InkwellCustom(
                child: TypePromotion(
                    is_selected: type == 2 ? true : false,
                    name: LocaleKeys.txt_redeem_offer.tr()),
                onTap: () {
                  final viewModel = context.read(promotionViewModel);
                  viewModel.type = 2;
                  viewModel.notifyListeners();
                },
              ),
            ],
          );
        },
      ),
    );
  }

  _buildPage() {
    return HookBuilder(builder: (_){
      final type = useProvider(promotionViewModel.select((value) => value.type));
      if(type==1){
        return Expanded(child: AccumulatePoints());
      }
      else{
        return Expanded(child: RedeemOffer());
      }
    });
  }
}
