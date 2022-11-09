import 'package:base_riverpod/resources/app_resource.dart';
import 'package:base_riverpod/ui/home/component/home_view_banner.dart';
import 'package:base_riverpod/ui/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/src/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  void initState() {
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
              Expanded(child: _buildMainView())
            ],
          ),
        ),
      ),
    );
  }

  _buildMainView() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(15.w),
        padding: EdgeInsets.all(5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDeliveryOrTakeAWay(),
            SizedBox(height: 10.w),
            HomeViewBanner()


          ],
        ),
      ),
    );
  }

  _buildDeliveryOrTakeAWay() {
    return Container(
      decoration: decorOnlyBorder(color: Colors.grey.shade400,radius: 10.r),
      height: 50.w,
      width: ScreenUtil().screenWidth,
      child: Row(
        children: [
          Expanded(child: InkwellCustom(child: Icon(Icons.delivery_dining_rounded,size: 30.w,),
          onTap: (){
            print("hello1");
          },)),
          VerticalDivider(thickness: 3,color: Colors.grey,),
          Expanded(child: InkwellCustom(child: Icon(Icons.delivery_dining_rounded,size: 30.w,),
          onTap: (){
            print("hello2");
          },)),

        ],
      ),
    );
  }
}
