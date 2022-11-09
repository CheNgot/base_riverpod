import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:base_riverpod/data/broadcast/broadcast_provider.dart';
import 'package:base_riverpod/data/local/hive/hive_provider.dart';
import 'package:base_riverpod/data/model/common/common_banner.dart';
import 'package:base_riverpod/data/model/common/common_country.dart';
import 'package:base_riverpod/data/model/common/response_banner.dart';
import 'package:base_riverpod/data/provider/provider.dart';
import 'package:base_riverpod/data/repository/auth/auth_repository.dart';
import 'package:base_riverpod/data/repository/common/common_repository.dart';
import 'package:base_riverpod/resources/base/base_loading_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeViewModel = ChangeNotifierProvider.autoDispose(
        (ref) => HomeViewModel(ref.read(authRepositoryProvider), ref.read(hiveProvider), ref.read(broadCastProvider),
        ref.read(commonRepositoryProvider)));

class HomeViewModel extends BaseLoadingChangeNotifier {
  final AuthRepository _authRepository;
  final HiveProvider _hiveProvider;
  final AppBroadCast _broadCastProvider;
  final CommonRepository _commonRepository;


  HomeViewModel(this._authRepository, this._hiveProvider, this._broadCastProvider,this._commonRepository);




  List<CommonBanner>? listBanners;


  Future<List<CommonCountry>?> getCountrys() async{
    return await handleResultAPI(_commonRepository.loadCountries());

  }

  Future<List<CommonBanner>?> loadBanners() async {
    final List<ResponseBanner> list =
    await handleResultAPI(_commonRepository.loadBanners());
    log("test temp==" + list.toString());
    log("test temp==" + list.toString());

    print("test temp==" + list.length.toString());

    List<CommonBanner> temp = [];
    for (int i = 0; i < list.length; i++) {
      if (list[i].site?.name == "Top") {
        print("test temp2==" + (list[i].site?.name).toString());
        if (list[i].images?.isNotEmpty ?? false) {
          CommonBanner tempBanner = CommonBanner(
              path: "",
              is_active: list[i].isActive,
              link: list[i].images?.last.url,
              id: list[i].id,
              title: list[i].descriptions);
          temp.add(tempBanner);
        }
      }
      if(list[i].site?.name == "Bottom"){
        log("bottom=="+list[i].videos.toString());
        if(list[i].videos?.isNotEmpty??false){
          // videoUrl= list[i].videos?.last.url;
          // thumbnail= list[i].videos?.last.thumbnail_url;
          // notifyListeners();
        }
      }
    }
    listBanners = temp;

    notifyListeners();
  }


// Future<ResponseLogin?> login(String username, String password) async {
//   final request = RequestLogin(phone: username, password: password, app_type: "customer"
//       // device_token: _hiveProvider.getDeviceToken(),
//       // device_type: Platform.isAndroid ? 'android' : 'ios',
//       // login_as: getKeyFromLoginAs(),
//       );
//   ResponseLogin? responseLogin = await handleResultAPI(_authRepository.login(request), isShowLoading: true);
//
//   if (responseLogin != null) {
//     _hiveProvider.saveBearerToken(responseLogin.access_token);
//     _hiveProvider.saveUser(responseLogin.user);
//   }
//
//   return responseLogin;
// }
}
