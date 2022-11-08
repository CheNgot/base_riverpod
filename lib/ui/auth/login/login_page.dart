import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/generated/locale_keys.g.dart';
import 'package:base_riverpod/resources/app_colors.dart';
import 'package:base_riverpod/resources/app_textstyle.dart';
import 'package:base_riverpod/resources/base/base_container.dart';
import 'package:base_riverpod/resources/component/button/button_gradient.dart';
import 'package:base_riverpod/resources/component/custom/inwell_custom.dart';
import 'package:base_riverpod/resources/component/input/input_text_field.dart';
import 'package:base_riverpod/resources/component/input/input_text_field_password.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constants.dart';
import 'login_view_model.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneTed = TextEditingController();
  TextEditingController passwordTed = TextEditingController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      final viewModel = context.read(loginViewModel);
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
            provider: loginViewModel,
            child: _buildMainView(),
          ),
        ),
        Positioned(left: 0, right: 0, bottom: 0, child: Material(child: _buildRegisterButtonView())),
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
              Assets.images.imgTopLogin.image(height: 200.h, width: 200.h),
              SizedBox(height: 20.h),
              Text(LocaleKeys.txt_login.tr(), style: styleTextWhiteBold(20)),
              SizedBox(height: 20.h),
              InputTextField(
                hintText: LocaleKeys.txt_login_phone.tr(),
                prefixIcon: Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Assets.images.icUser.image(height: 20.h, width: 20.h)),
                prefixIconSize: 25.h,
                // prefixIcon: Icon(Icons.account_circle, color: Colors.white, size: 20.h),
                keyboardType: TextInputType.number,
                controller: phoneTed,
              ),
              SizedBox(height: 15.h),
              InputTextFieldPassword(
                controller: passwordTed,
                hintText: LocaleKeys.txt_password.tr(),
                prefixIcon: Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Assets.images.icLock.image(height: 20.h, width: 20.h)),
                prefixIconSize: 25.h,
                // prefixIcon: Icon(Icons.lock_outline, color: Colors.white, size: 20.h),
              ),
              SizedBox(height: 20.h),
              ButtonGradient(text: LocaleKeys.txt_login.tr(), onPress: _login),
              SizedBox(height: 20.h),
              InkwellCustom(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.fingerprint, color: colorPrimary, size: 22.h),
                    SizedBox(width: 5.w),
                    Text(LocaleKeys.txt_login_with_fingerprint.tr(), style: styleTextWhite())
                  ],
                ),
              ),
              SizedBox(height: 70.h),
              InkwellCustom(
                onTap: () {
                  Navigator.pushNamed(context, Constants.forgotPassPhonePage);
                },
                child: Text(LocaleKeys.txt_forget_password_1.tr(), style: styleTextPrimary()),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRegisterButtonView() {
    return Container(
      padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
      color: Color(0xFF463E37),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(LocaleKeys.txt_new_member.tr(), style: styleTextWhite()),
            SizedBox(width: 5.w),
            InkwellCustom(
                color: Color(0xFF463E37),
                onTap: () {
                  Navigator.pushNamed(context, Constants.registerPage);
                },
                child: Text(LocaleKeys.txt_register.tr(), style: styleTextPrimary()))
          ],
        ),
      ),
    );
  }

  void _login() {
    if (!kReleaseMode && phoneTed.text.isEmpty) {
      phoneTed.text = "0903882316";
      passwordTed.text = "123456";
    }

    if (!(_formKey.currentState?.validate() == true)) return;
    // context.read(loginViewModel).login(phoneTed.text, passwordTed.text).then((value) {
    //   if (value != null) {
    //     Navigator.pushNamed(context, Constants.masterPage);
    //   }
    // });
  }
}
