import 'package:base_riverpod/ui/auth/login/login_page.dart';
import 'package:base_riverpod/ui/auth/register/register_page.dart';
import 'package:base_riverpod/ui/home/home_page.dart';
import 'package:base_riverpod/ui/master/master_page.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/data/model/auth/user.dart';
import 'package:base_riverpod/resources/component/page/image_full_screen_page.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:base_riverpod/data/provider/provider.dart';
import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/resources/base/base_page_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'constants.dart';

class AppSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Replace the 3 second delay with your initialization code:
      future: _loadData(context),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(home: Splash());
        } else {
          // Loading is done, return the app:
          return App();
        }
      },
    );
  }

  Future<dynamic> _loadData(BuildContext context) {
    return Future.wait([
      // loadFCMDeviceToken(context),
      // supportRepository.loadSettings().then((value) {
      //   if (value.dataOrNull != null) {
      //     List<SettingObject> settings = value.dataOrNull as List<SettingObject>;
      //     st.forEach((element) {
      //       final key = element.key;
      //       switch (key) {
      //         case 'facebook':
      //           pref.saveFacebookValue(element.value);
      //           // pref.saveFacebookValue('https://www.facebook.com/manhtuan21/');
      //           break;
      //         case 'zalo':
      //           pref.saveZaloValue(element.value);
      //           // pref.saveZaloValue('0368179011');
      //           break;
      //         case 'hotline':
      //           pref.saveHotlineValue(element.value);
      //           // pref.saveHotlineValue('0368179011');
      //           break;
      //       }
      //     });
      //   }
      // }),
    ]);
  }

  Future<dynamic> loadFCMDeviceToken(BuildContext context) {
    final fcmMessaging = FirebaseMessaging.instance;
    return fcmMessaging.getToken().then((token) {
      print("onTokenFCM: $token");
      if (token != null) {
        context.read(hiveProvider).saveDeviceToken(token);
        // context.read(masterPageViewModel).sendDeviceTokenToServer(token);
      }
    });
  }
}

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final isLogged = context.read(hiveProvider).getUser() != null;
    return ScreenUtilInit(
      designSize: const Size(411, 683),
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Massage',
        // theme: lightTheme,
        // darkTheme: darkTheme,
        // themeMode: ThemeMode.light,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        home: MasterPage(),
        // home: isLogged ? MasterPage() : LoginPage(),
        onGenerateRoute: (st) {
          switch (st.name) {
            case Constants.pageImageFullScreen:
              return BasePageRoute(
                  settings: st, builder: (_) => ImageFullScreenPage(st.arguments as ImageFullScreenArg));
            case Constants.loginPage:
              return BasePageRoute(settings: st, builder: (_) => LoginPage());
            case Constants.registerPage:
              return BasePageRoute(settings: st, builder: (_) => RegisterPage());
            // case Constants.registerPage:
            //   return BasePageRoute(settings: st, builder: (_) => RegisterPage());
            // case Constants.forgotPassEmailPage:
            //   return BasePageRoute(settings: st, builder: (_) => ForgotPassEmailPage());
            // case Constants.forgotPassVerifyPage:
            //   return BasePageRoute(settings: st, builder: (_) => ForgotPassVerifyPage(st.arguments as String));
            // case Constants.forgotPassChangePassPage:
            //   return BasePageRoute(settings: st, builder: (_) => ForgotPassChangePassPage(st.arguments as ForgotPassChangePassArg));
            // case Constants.changePassPage:
            //   return BasePageRoute(settings: st, builder: (_) => ChangePassPage());
            case Constants.masterPage:
              return BasePageRoute(settings: st, builder: (_) => MasterPage());
          }
        },
      ),
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Assets.images.backgroundSplash.image(width: double.infinity, height: double.infinity, fit: BoxFit.cover),
    );
  }
}
