import 'dart:collection';
import 'dart:io';

import 'package:base_riverpod/data/local/hive/hive_provider.dart';
import 'package:base_riverpod/data/model/auth/user.dart';
import 'package:base_riverpod/data/provider/provider.dart';
import 'package:base_riverpod/data/repository/common/common_repository.dart';

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants.dart';

final masterPageViewModel = ChangeNotifierProvider.autoDispose((ref) => MasterPageViewModel(ref.read(hiveProvider),
    ref.read(commonRepositoryProvider),

));

enum MasterPageTab {
  tabHome,
  tabOrder,
  tabStore,
  tabPromotion,
  tabOther,
}

class MasterPageViewModel extends ChangeNotifier {
  final HiveProvider _hiveProvider;
  final CommonRepository commonRepository;


  MasterPageViewModel(this._hiveProvider,this.commonRepository);

  MasterPageTab tab = MasterPageTab.tabHome;

  final ListQueue<String?> _queuePage = ListQueue();



  User?  getUserFromLocal (){
    return _hiveProvider.getUser();
  }




  void addPageToBackStack(String? pageName, [bool isRefreshStack = true]) {
    if (pageName == '/') return;
    if (isRefreshStack == true) {
      if (pageName == Constants.homePage) {
        _queuePage.clear();
      } else {
        _queuePage.clear();
        _queuePage.add(Constants.homePage);
      }
    }

    _queuePage.addLast(pageName);
    _setTabFromPageName(pageName);
  }

  void backPageFromBackStack() {
    if (_queuePage.isNotEmpty) {
      _queuePage.removeLast();
      var pageName = _queuePage.last;
      _setTabFromPageName(pageName);
    }
  }

  void _setTabFromPageName(String? pageName) {
    switch (pageName) {
      case Constants.homePage:
        tab = MasterPageTab.tabHome;
        break;
      case Constants.orderPage:
        tab = MasterPageTab.tabOrder;
        break;
      case Constants.storePage:
        tab = MasterPageTab.tabStore;
        break;
      case Constants.promotionPage:
        tab = MasterPageTab.tabPromotion;
        break;
      case Constants.otherPage:
        tab = MasterPageTab.tabOrder;
        break;

      default:
        break;
    }
    notifyListeners();
  }

  // Future<User?> updateLocale() async {
  //   String locale = _hiveProvider.getLocale()??"";
  //   String locale2 ="";
  //   if(Platform.localeName=="vi_VN"){
  //     locale2="vn";
  //   }
  //   else if( Platform.localeName.contains("en")){
  //     locale2="en";
  //   }
  //   commonRepository.updateLocale(locale.isEmpty?  locale2:locale);
  // }



// void getBearerToken() async {
//   bearerToken = await _authRepository.loadBearerToken();
// }
//
// void saveDeviceToken(String deviceToken) {
//   _authRepository.saveDeviceToken(deviceToken);
// }
}
