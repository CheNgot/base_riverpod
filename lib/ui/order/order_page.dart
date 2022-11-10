import 'package:base_riverpod/resources/app_resource.dart';
import 'package:base_riverpod/ui/order/component/item_order.dart';
import 'package:base_riverpod/ui/order/tab_bar_order.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'order_view_model.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  String text = "Danh mục";
  final AssetGenImage iconData = Assets.images.icCategory;
  ScrollController? scrollController;
  final ItemScrollController itemScrollController = ItemScrollController();

  /// Listener that reports the position of items when the list is scrolled.
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseContainer(
        provider: orderViewModel,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TabBarOrder(
                text: text,
                iconData: iconData,
              ),
              SizedBox(height: 10.w),
              Expanded(child: _buildMainView())
            ],
          ),
        ),
      ),
    );
  }

  _buildMainView() {
    return _buildListView();
  }

  _buildCategory() {
    return Container(
      width: ScreenUtil().screenWidth,
      height: 230.w,
      child: GridView.count(
        padding: EdgeInsets.zero,
        crossAxisCount: 4,
        children: List<Widget>.generate(8, (index) {
          return GridTile(
            child: InkwellCustom(
              onTap: () {
                itemScrollController.scrollTo(
                    index: index + 1,
                    duration: Duration(seconds: 2),
                    curve: Curves.easeInOutCubic);
              },
              child: Card(
                  color: Colors.blue.shade200,
                  child: Center(
                    child: Text('title $index'),
                  )),
            ),
          );
        }),
      ),
    );
  }

  _buildListView() {
    return ScrollablePositionedList.builder(
      itemCount: 9,
      itemBuilder: (context, index) {
        if (index == 0) {
          return _buildCategory();
        } else {
          return _buildItem(index);
        }
      },
      itemScrollController: itemScrollController,
      itemPositionsListener: itemPositionsListener,
    );
  }

  _buildItem(int indexTotal) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("item tổng==" + indexTotal.toString()),
        ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return ItemOrder();
            })
      ],
    );
  }
}
