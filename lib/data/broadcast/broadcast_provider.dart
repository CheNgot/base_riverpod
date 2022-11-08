import 'dart:developer';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:base_riverpod/data/local/hive/hive_provider.dart';
import 'package:base_riverpod/data/model/auth/user.dart';
import 'package:base_riverpod/data/provider/provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants.dart';

final broadCastProvider = ChangeNotifierProvider<AppBroadCast>((ref) => AppBroadCast(ref.read(hiveProvider)));

class AppBroadCast extends ChangeNotifier {
  AppBroadCast(this._hive) {
    badgeNotification = 0;
    currentUser ??= _hive.getUser();
    // appColor ??= _pref.getAppColor();
    // cartNumber ??= _pref.getCart().length;
  }

  final HiveProvider _hive;

  int? badgeNotification;
  User? currentUser;

  int? cartNumber;
  Color? appColor;

  void updateNotificationNumber(int number) async {
    badgeNotification = number;
    notifyListeners();
  }

  void updateCurrentUser(User? user) async {
    currentUser = user;
    _hive.saveUser(user);
    notifyListeners();
  }
}
