
import 'package:dio/dio.dart';
import 'package:base_riverpod/data/model/auth/request_change_forgot_pass.dart';
import 'package:base_riverpod/data/model/auth/request_change_password.dart';
import 'package:base_riverpod/data/model/auth/request_login.dart';
import 'package:base_riverpod/data/model/auth/request_register.dart';
import 'package:base_riverpod/data/model/auth/request_send_otp.dart';
import 'package:base_riverpod/data/model/auth/request_update_profile.dart';
import 'package:base_riverpod/data/model/auth/request_verify_otp.dart';
import 'package:base_riverpod/data/model/auth/response_login.dart';
import 'package:base_riverpod/data/model/auth/user.dart';
import 'package:base_riverpod/data/model/base/base_request.dart';
import 'package:base_riverpod/data/model/base/result.dart';
import 'package:base_riverpod/data/model/common/common_setting.dart';
import 'package:base_riverpod/data/model/common/request_upload_image.dart';

abstract class AuthRepository {
  Future<Result<ResponseLogin?>> login(RequestLogin request);

  Future<Result<User?>> register(RequestRegister request);

  Future<Result<bool?>> requestSendOTPForgotPass(RequestSendOtp request);

  Future<Result<dynamic>> verifyOtpForgotPass(RequestVerifyOtp request);

  Future<Result<dynamic>> changePasswordForgot(RequestChangeForgotPass request);

  Future<Result<User?>> loadProfile();

  Future<Result<User?>> updateProfile(RequestUpdateProfile request);

  Future<Result<dynamic>> changePassword(RequestChangePassword request);

}
