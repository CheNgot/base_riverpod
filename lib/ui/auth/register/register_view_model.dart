import 'dart:async';
import 'dart:io';

import 'package:base_riverpod/data/broadcast/broadcast_provider.dart';
import 'package:base_riverpod/data/local/hive/hive_provider.dart';
import 'package:base_riverpod/data/provider/provider.dart';
import 'package:base_riverpod/data/repository/auth/auth_repository.dart';
import 'package:base_riverpod/resources/base/base_loading_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final registerViewModel = ChangeNotifierProvider.autoDispose(
    (ref) => RegisterViewModel(ref.read(authRepositoryProvider), ref.read(hiveProvider), ref.read(broadCastProvider)));

class RegisterViewModel extends BaseLoadingChangeNotifier {
  final AuthRepository _authRepository;
  final HiveProvider _hiveProvider;
  final AppBroadCast _broadCastProvider;

  RegisterViewModel(this._authRepository, this._hiveProvider, this._broadCastProvider);

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
