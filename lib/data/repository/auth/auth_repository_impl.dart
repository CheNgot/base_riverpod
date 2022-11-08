import 'package:base_riverpod/data/local/hive/hive_provider.dart';
import 'package:base_riverpod/data/model/auth/request_change_forgot_pass.dart';
import 'package:base_riverpod/data/model/auth/request_change_password.dart';
import 'package:base_riverpod/data/model/auth/request_login.dart';
import 'package:base_riverpod/data/model/auth/request_register.dart';
import 'package:base_riverpod/data/model/auth/request_send_otp.dart';
import 'package:base_riverpod/data/model/auth/request_update_profile.dart';
import 'package:base_riverpod/data/model/auth/request_verify_otp.dart';
import 'package:base_riverpod/data/model/auth/response_login.dart';
import 'package:base_riverpod/data/model/auth/user.dart';
import 'package:base_riverpod/data/model/base/result.dart';
import 'package:base_riverpod/data/model/common/common_setting.dart';
import 'package:base_riverpod/data/network/dio_provider.dart';
import 'package:base_riverpod/data/repository/common/common_repository.dart';

import 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({required HiveProvider hiveProvider, required DioProvider dioProvider})
      : _dioProvider = dioProvider,
        _hiveProvider = hiveProvider;

  final DioProvider _dioProvider;
  final HiveProvider _hiveProvider;

  @override
  Future<Result<ResponseLogin?>> login(RequestLogin request) => Result.guardFuture(() async {
        final baseResponse = await _dioProvider.login(request);
        return baseResponse.data;
      });

  @override
  Future<Result<User?>> register(RequestRegister request) => Result.guardFuture(() async {
        final baseResponse = await _dioProvider.register(request);
        return baseResponse.data;
      });

  @override
  Future<Result<bool?>> requestSendOTPForgotPass(RequestSendOtp request) => Result.guardFuture(() async {
        final baseResponse = await _dioProvider.requestForgotPass(request);
        return baseResponse.data;
      });

  @override
  Future<Result> verifyOtpForgotPass(RequestVerifyOtp request) => Result.guardFuture(() async {
        final baseResponse = await _dioProvider.verifyForgotPassOTP(request);
        return baseResponse.data;
      });

  @override
  Future<Result> changePasswordForgot(RequestChangeForgotPass request) => Result.guardFuture(() async {
        final baseResponse = await _dioProvider.changePasswordForgot(request);
        return baseResponse.data;
      });

  @override
  Future<Result<User?>> loadProfile() => Result.guardFuture(() async {
        final baseResponse = await _dioProvider.loadProfile();
        return baseResponse.data;
      });

  @override
  Future<Result<User?>> updateProfile(RequestUpdateProfile request) => Result.guardFuture(() async {
        final baseResponse = await _dioProvider.updateProfile(request);
        return baseResponse.data;
      });

  @override
  Future<Result> changePassword(RequestChangePassword request) => Result.guardFuture(() async {
        final baseResponse = await _dioProvider.changePassword(request);
        return baseResponse.data;
      });

// @override
// Future<Result<List<CommonSetting>?>> loadSettings() => Result.guardFuture(() async {
//       final baseResponse = await _dioProvider.loadSettings();
//       return baseResponse;
//     });
}
