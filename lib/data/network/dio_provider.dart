import 'package:dio/dio.dart';
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
import 'package:base_riverpod/data/model/base/base_response.dart';
import 'package:base_riverpod/data/model/common/common_location.dart';
import 'package:base_riverpod/data/model/notification/notify_item.dart';

class DioProvider {
  DioProvider({required Dio dio, required HiveProvider hiveProvider})
      : _dio = dio,
        _hiveProvider = hiveProvider {
    // _dio.interceptors.add(InterceptorsWrapper(onRequest: (options) {
    //   final token = _prefsProvider.getBearerToken();
    //   options.headers["Authorization"] = "Bearer $token";
    //   return options;
    // }));

    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      final token = _hiveProvider.getBearerToken();
      options.headers["Authorization"] = "Bearer $token";
      // return options;
      handler.next(options);
    }));
  }

  final Dio _dio;
  final HiveProvider _hiveProvider;

  Future<BaseResponse<List<CommonLocation>?>> loadProvinces() =>
      _dio.get("api/locations/cities").then((res) => BaseResponse.fromJson(res.data, (d) {
            return (d as List).map((data) => CommonLocation.fromJson(data)).toList();
          }));

  Future<BaseResponse<List<CommonLocation>?>> loadDistricts(int? provinceId) =>
      _dio.get("api/locations/cities/$provinceId/districts").then((res) => BaseResponse.fromJson(res.data, (d) {
            return (d as List).map((data) => CommonLocation.fromJson(data)).toList();
          }));

  Future<BaseResponse<List<CommonLocation>?>> loadWards(int? districtId) => _dio
      .get("api/locations/cities/districts/$districtId/villages")
      .then((res) => BaseResponse.fromJson(res.data, (d) {
            return (d as List).map((data) => CommonLocation.fromJson(data)).toList();
          }));

  Future<BaseResponse<ResponseLogin?>> login(RequestLogin request) => _dio
      .post("api/login", data: request.toJson())
      .then((res) => BaseResponse.fromJson(res.data, (d) => ResponseLogin.fromJson(d as Map<String, dynamic>)));

  Future<BaseResponse<User?>> register(RequestRegister request) => _dio
      .post("api/users", data: request.toJson())
      .then((res) => BaseResponse.fromJson(res.data, (d) => User.fromJson(d as Map<String, dynamic>)));

  Future<BaseResponse<bool?>> requestForgotPass(RequestSendOtp request) => _dio
      .post("api/send-reset-code", data: request.toJson())
      .then((res) => BaseResponse.fromJson(res.data, (d) => d as bool));

  Future<BaseResponse> verifyForgotPassOTP(RequestVerifyOtp request) => _dio
      .post("api/verify-reset-code", data: request.toJson())
      .then((res) => BaseResponse.fromJson(res.data, (d) => d));

  Future<BaseResponse> changePasswordForgot(RequestChangeForgotPass request) =>
      _dio.post("api/reset-password", data: request.toJson()).then((res) => BaseResponse.fromJson(res.data, (d) => d));

  Future<BaseResponse<User?>> loadProfile() => _dio
      .get("api/users/show")
      .then((res) => BaseResponse.fromJson(res.data, (d) => User.fromJson(d as Map<String, dynamic>)));

  Future<BaseResponse<User?>> updateProfile(RequestUpdateProfile request) async {
    var data = await request.toFormData();
    return await _dio.post('api/users/update', data: data).then(
        (response) => BaseResponse.fromJson(response.data, (json) => User.fromJson(json as Map<String, dynamic>)));
  }

  Future<BaseResponse> changePassword(RequestChangePassword request) => _dio
      .put("api/users/change-password", data: request.toJson())
      .then((res) => BaseResponse.fromJson(res.data, (d) => d));

  Future<BaseResponse<List<NotifyItem>?>> loadNotifications() =>
      _dio.get("api/notifications").then((res) => BaseResponse.fromJson(res.data['data'], (d) {
            return (d as List).map((data) => NotifyItem.fromJson(data)).toList();
          }));

  Future<BaseResponse<NotifyItem?>> loadNotificationDetail(int? id) => _dio
      .get("api/notifications/$id")
      .then((res) => BaseResponse.fromJson(res.data, (d) => NotifyItem.fromJson(d as Map<String, dynamic>)));

// Future<BaseResponse<List<NewObject>?>> loadNews(RequestLoadMore request) => _dio
//     // .get("posts", queryParameters: request.toJson())
//     .get("posts?type=post", queryParameters: request.toJson())
//     .then((res) => BaseResponse.fromJson(res.data['data'], (d) {
//           return (d as List).map((data) => NewObject.fromJson(data)).toList();
//         }));
//
// Future<BaseResponse<NewObject?>> loadNewDetail(int? id) => _dio
//     .get("posts/$id")
//     .then((res) => BaseResponse.fromJson(res.data, (d) => NewObject.fromJson(d as Map<String, dynamic>)));

}
