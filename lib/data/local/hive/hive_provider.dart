import 'dart:convert';

import 'package:base_riverpod/data/model/common/common_location.dart';
import 'package:base_riverpod/constants.dart';
import 'package:base_riverpod/data/model/auth/user.dart';
import 'package:base_riverpod/data/model/common/common_location.dart';
import 'package:base_riverpod/data/model/common/tham_my_setting.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HiveProvider {
  static const String HIVE_SIMPLE_BOX = 'HIVE_SIMPLE_BOX';
  static const String HIVE_PROVINCE_BOX = 'HIVE_PROVINCE_BOX';

  static const String HIVE_FCM_MESSAGE_ID = 'FCM_MESSAGE_ID';
  static const String HIVE_BADGE_NOTIFICATION = 'BADGE_NOTIFICATION';
  static const String HIVE_CART_NUMBER = 'CART_NUMBER';
  static const String HIVE_BEARER_TOKEN = 'PREF_BEARER_TOKEN';
  static const String HIVE_DEVICE_TOKEN = 'PREF_DEVICE_TOKEN';
  static const String HIVE_CART = 'PREF_CART';
  static const String HIVE_USER = 'PREF_USER';

  Box<String>? simpleBox;
  Box<CommonLocation>? commonLocationBox;

  HiveProvider() {
    simpleBox = Hive.box<String>(HIVE_SIMPLE_BOX);
    // commonLocationBox = Hive.box<CommonLocation>(HIVE_PROVINCE_BOX);
  }

  Future<void> initPref() async {
    simpleBox = Hive.box<String>(HIVE_SIMPLE_BOX);
    // commonLocationBox = Hive.box<CommonLocation>(HIVE_PROVINCE_BOX);
    // commonLocationBox = await Hive.openBox<CommonLocation>(HIVE_PROVINCE_BOX);
    return;
  }

  void clearData() async {
    saveUser(null);
    saveBearerToken(null);
  }

  // ========================================= SIMPLE BOX
  // This save FCMMessageId to fix issue FCM getInitialMessage call multitime
  String? getFCMMessageId() => simpleBox?.get(HIVE_FCM_MESSAGE_ID);

  void saveFCMMessageId(String? str) => simpleBox?.put(HIVE_FCM_MESSAGE_ID, str ?? '');

  String? getDeviceToken() => simpleBox?.get(HIVE_DEVICE_TOKEN);

  void saveDeviceToken(String? token) => simpleBox?.put(HIVE_DEVICE_TOKEN, token ?? '');

  String? getBearerToken() => simpleBox?.get(HIVE_BEARER_TOKEN);

  void saveBearerToken(String? token) => simpleBox?.put(HIVE_BEARER_TOKEN, token ?? '');

  User? getUser() {
    final str = simpleBox?.get(HIVE_USER);
    if (str == null || str.isEmpty) return null;
    return User.fromJson(json.decode(str));
  }

  void saveUser(User? user) {
    if (user == null) {
      simpleBox?.put(HIVE_USER, "");
      return;
    }
    simpleBox?.put(HIVE_USER, json.encode(user.toJson()));
  }

// =========================================

  void saveProvinces(List<CommonLocation>? provinces) {
    // Box<CommonLocation> provinceBox = Hive.box<CommonLocation>(HIVE_PROVINCE_BOX);
    commonLocationBox?.addAll(provinces ?? []);
  }

  List<CommonLocation>? getProvincesList() {
    // Box<CommonLocation> provinceBox = Hive.box<CommonLocation>(HIVE_PROVINCE_BOX);
    return commonLocationBox?.values.toList();

    // Box<Item> itemBox = Hive.box<Item>("Item");
    // itemBox.values.where((item) => item.value == 1)
    //     .forEach((item) => print('All First Value Data Showing Result'));
  }
}
