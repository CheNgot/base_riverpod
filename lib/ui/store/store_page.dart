import 'package:base_riverpod/resources/app_resource.dart';
import 'package:base_riverpod/ui/store/item_store.dart';
import 'package:base_riverpod/ui/store/store_view_model.dart';
import 'package:base_riverpod/ui/store/tab_bar_store.dart';
import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseContainer(
        provider: storeViewModel,
        child: Container(
          color: Colors.grey.shade200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [TabBarStore(), Expanded(child: _buildMainView())],
          ),
        ),
      ),
    );
  }

  _buildMainView() {
    return ListView.separated(
        separatorBuilder: (BuildContext context, index) {
          return SizedBox(height: 10.w);
        },
        shrinkWrap: true,
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return ItemStore();
        });
  }
}
