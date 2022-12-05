import 'package:base_riverpod/resources/app_resource.dart';
import 'package:base_riverpod/resources/base/base_container.dart';
import 'package:base_riverpod/ui/other/%20component/account_view_model.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  TextEditingController nameTed = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseContainer(
        provider: accountViewModel,
        child: Container(
          color: Colors.grey.shade200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonTopBar(text: "Thông tin cá nhân"),
              Expanded(child: _buildMainView())

            ],
          ),
        ),
      ),
    );
  }
  _buildMainView(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _avatar(),
        CommonInputView(ted: ted)
      ],
    );

  }
  _avatar({String? url}) {
    return ClipOval(
        child: ShimmerLoadingImage(
            imageUrl: url??
                "https://media.macphun.com/img/uploads/customer/blog/1543597882/15435988395c0172f73a0f39.30775845.jpg?q=85&w=1680",
            width: 40.h,
            height: 40.h));
  }

}
