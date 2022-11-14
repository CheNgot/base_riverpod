import 'package:base_riverpod/resources/app_resource.dart';
import 'package:base_riverpod/ui/other/%20component/order_history%20/cancel_page.dart';
import 'package:base_riverpod/ui/other/%20component/order_history%20/done_page.dart';
import 'package:base_riverpod/ui/other/%20component/order_history%20/order_history_view_model.dart';
import 'package:base_riverpod/ui/other/%20component/order_history%20/processing_page.dart';
import 'package:base_riverpod/ui/promotion/component/type_promotion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseContainer(
        provider: orderHistoryViewModel,
        child: Container(color: Colors.grey.shade200,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonTopBar(text: LocaleKeys.txt_order_history.tr()),
            _buildWidgetType(),
            _buildPage()
          ],
        ),),
      ),
    );
  }
  _buildWidgetType() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10.w),
      child: HookBuilder(
        builder: (_) {
          final type =
          useProvider(orderHistoryViewModel.select((value) => value.type));
          return Row(
            children: [
              InkwellCustom(
                  child: TypePromotion(
                      is_selected: type == 1 ? true : false,
                      name: "Đang tiến hành"),
                  onTap: () {
                    final viewModel = context.read(orderHistoryViewModel);
                    viewModel.type = 1;
                    viewModel.notifyListeners();
                  }),
              InkwellCustom(
                child: TypePromotion(
                    is_selected: type == 2 ? true : false,
                    name: "Đã giao"),
                onTap: () {
                  final viewModel = context.read(orderHistoryViewModel);
                  viewModel.type = 2;
                  viewModel.notifyListeners();
                },
              ),
              InkwellCustom(
                child: TypePromotion(
                    is_selected: type == 3 ? true : false,
                    name: "Đã huỷ"),
                onTap: () {
                  final viewModel = context.read(orderHistoryViewModel);
                  viewModel.type = 3;
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
      final type = useProvider(orderHistoryViewModel.select((value) => value.type));
      if(type==1){
        return Expanded(child: ProcessingPage());
      }
      else if(type==2){
        return Expanded(child: DonePage());

      }
      else if(type==3){
        return Expanded(child: CancelPage());
      }
      else{
        return Expanded(child: SizedBox());
      }
    });
  }
  
}
