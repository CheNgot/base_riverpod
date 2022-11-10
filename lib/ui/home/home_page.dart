import 'package:base_riverpod/resources/app_resource.dart';
import 'package:base_riverpod/ui/home/component/home_view_banner.dart';
import 'package:base_riverpod/ui/home/component/tab_update.dart';
import 'package:base_riverpod/ui/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/src/provider.dart';

import 'component/tab_coffe_lover.dart';
import 'component/tab_special_offer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  int length = 3;
  ScrollController? controller;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      final viewModel = context.read(homeViewModel);
      // viewModel.getCountrys();
      viewModel.loadBanners();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseContainer(
        provider: homeViewModel,
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonTopBar(text: "Home"),
              SizedBox(
                height: 15.w,
              ),
              Expanded(child: _buildMainView())
            ],
          ),
        ),
      ),
    );
  }

  _buildMainView() {
    return NestedScrollView(


      headerSliverBuilder: (context, value) {
        return [
          SliverToBoxAdapter(child: HomeViewBanner()),

          SliverToBoxAdapter(child: _buildDeliveryOrTakeAWay()),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 10.w),
              child: TabBar(
                controller: _tabController,
                unselectedLabelColor: Colors.grey,
                labelColor: colorPrimary,
                indicator: UnderlineTabIndicator(
                  borderSide:
                      BorderSide(color: colorPrimary), // Indicator height
                ),
                tabs: [
                  Tab(
                    text: "Ưu đãi đặc biệt",
                  ),
                  Tab(
                    text: "Caffe Lover",
                  ),
                  Tab(
                    text: "Update",
                  ),
                ],
              ),
            ),
          ),
        ];
      },
      body: Container(
        child: TabBarView(
          controller: _tabController,
          children: <Widget>[
            SpecialOffer(),
            TabCoffeLover(),
            TabUpdate(),
          ],
        ),
      ),
    );
  }

  _buildDeliveryOrTakeAWay() {
    return Container(
      decoration: decorOnlyBorder(color: Colors.grey.shade400, radius: 10.r),
      height: 50.w,
      width: ScreenUtil().screenWidth,
      child: Row(
        children: [
          Expanded(
              child: InkwellCustom(
            child: Icon(
              Icons.delivery_dining_rounded,
              size: 30.w,
            ),
            onTap: () {
              print("hello1");
            },
          )),
          VerticalDivider(
            thickness: 3,
            color: Colors.grey,
          ),
          Expanded(
              child: InkwellCustom(
            child: Icon(
              Icons.delivery_dining_rounded,
              size: 30.w,
            ),
            onTap: () {
              print("hello2");
            },
          )),
        ],
      ),
    );
  }

  _buildDiscovery() {
    return Container(
      width: ScreenUtil().screenWidth,
      color: Colors.white,
      child: TabBar(
        isScrollable: true,
        controller: _tabController,
        unselectedLabelColor: Colors.grey,
        labelColor: colorPrimary,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: colorPrimary), // Indicator height
        ),
        tabs: [
          Tab(child: Text("1")),
          Tab(child: Text("2")),
          Tab(child: Text("3")),
        ],
      ),
    );
  }

  _buildLists() {
    return Container(
        height: 300.w,
        child: TabBarView(
            controller: _tabController,
            children: [SpecialOffer(), TabCoffeLover(), TabUpdate()]));
  }
}
