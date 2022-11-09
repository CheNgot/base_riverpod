import 'package:base_riverpod/resources/app_resource.dart';
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
      viewModel.getCountrys();
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
              CommonTopBar(text: "Home")
            ],
          ),
        ),
      ),
    );
  }
}
