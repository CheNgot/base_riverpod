import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:base_riverpod/data/broadcast/broadcast_provider.dart';
import 'package:base_riverpod/data/local/hive/hive_provider.dart';
import 'package:base_riverpod/data/model/base/base_request.dart';
import 'package:base_riverpod/data/model/common/common_banner.dart';
import 'package:base_riverpod/data/model/common/common_country.dart';
import 'package:base_riverpod/data/model/common/response_banner.dart';
import 'package:base_riverpod/data/provider/provider.dart';
import 'package:base_riverpod/data/repository/auth/auth_repository.dart';
import 'package:base_riverpod/data/repository/common/common_repository.dart';
import 'package:base_riverpod/data/repository/order/order_repository.dart';
import 'package:base_riverpod/resources/app_resource.dart';
import 'package:base_riverpod/resources/base/base_loading_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final orderViewModel = ChangeNotifierProvider.autoDispose((ref) =>
    OrderViewModel(ref.read(orderRepositoryProvider), ref.read(hiveProvider),
        ref.read(broadCastProvider), ref.read(commonRepositoryProvider)));

class OrderViewModel extends BaseLoadingChangeNotifier {
  final HiveProvider _hiveProvider;
  final AppBroadCast _broadCastProvider;
  final CommonRepository _commonRepository;
  final OrderRepository _orderRepository;

  OrderViewModel(this._orderRepository, this._hiveProvider,
      this._broadCastProvider, this._commonRepository);

  List<CommonBanner>? listBanners;

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
