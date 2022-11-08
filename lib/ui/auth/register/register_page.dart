import 'package:base_riverpod/resources/app_resource.dart';
import 'package:base_riverpod/ui/auth/register/register_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  // common
  TextEditingController nameTed = TextEditingController();
  TextEditingController phoneTed = TextEditingController();
  TextEditingController emailTed = TextEditingController();
  TextEditingController passTed = TextEditingController();
  TextEditingController rePassTed = TextEditingController();

  //customer
  TextEditingController cmndTed = TextEditingController();
  TextEditingController addressTed = TextEditingController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      final viewModel = context.read(registerViewModel);
      // viewModel.doWithLoadingMulti([viewModel.loadProvinces()]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Positioned.fill(child: Assets.images.backgroundAuth.image(fit: BoxFit.cover)),
        Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.transparent,
          body: BaseContainer(
            provider: registerViewModel,
            child: Column(
              children: [
                CommonTopBar(text: LocaleKeys.txt_register.tr()),
                _buildMainView(),
              ],
            ),
          ),
        ),
      ],
    ));
  }

  Widget _buildMainView() {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.only(left: 40.w, right: 40.w),
          child: Column(
            children: [
              SizedBox(height: 25.h),
              CommonInputView(
                ted: phoneTed,
                hintText: LocaleKeys.txt_full_name_1.tr(),
              ),
              SizedBox(height: 15.h),
            ],
          ),
        ),
      ),
    );
  }

  void _register() {
    if (!(_formKey.currentState?.validate() == true)) return;
    // context.read(registerViewModel).login(phoneTed.text, passwordTed.text).then((value) {
    //   if (value != null) {
    //     Navigator.pushNamed(context, Constants.masterPage);
    //   }
    // });
  }
}
