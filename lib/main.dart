import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/data/model/common/common_location.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';
import 'data/local/hive/hive_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kReleaseMode) {
    debugPrint = (message, {wrapWidth}) {};
  }

  HttpOverrides.global = MyHttpOverrides();
  // SharedPreferences.setMockInitialValues({});
  // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

  await EasyLocalization.ensureInitialized();
  await initHive();
  // await Firebase.initializeApp();
  // FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

  runZonedGuarded(() {
    runApp(ProviderScope(
      child: EasyLocalization(
          supportedLocales: [const Locale('en'), const Locale('vi')],
          path: 'assets/translations', // <-- change patch to your
          fallbackLocale: const Locale('vi'),
          child: AppSplash()),
    ));
  }, (error, stackTrace) {
    log(error.toString());
  });
}

Future<void> initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(CommonLocationAdapter());
  await Hive.openBox<String>(HiveProvider.HIVE_SIMPLE_BOX);
  await Hive.openBox<CommonLocation>(HiveProvider.HIVE_PROVINCE_BOX);
}

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  //must have this empty function
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}
