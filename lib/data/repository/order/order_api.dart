

import 'package:base_riverpod/data/model/auth/request_login.dart';
import 'package:base_riverpod/data/model/auth/request_register.dart';
import 'package:base_riverpod/data/model/auth/response_login.dart';
import 'package:base_riverpod/data/model/auth/user.dart';
import 'package:base_riverpod/data/model/base/base_response.dart';
import 'package:base_riverpod/data/network/dio_provider.dart';

class OrderAPI {
  OrderAPI({required DioProvider dioProvider}) : _dio = dioProvider;

  final DioProvider _dio;

  Future<BaseResponse> deleteAccount() => _dio
      .put("/auth/delete")
      .then((res) => BaseResponse.fromJson(res.data, (d) => d));

  Future<BaseResponse<ResponseLogin?>> login(RequestLogin request) => _dio
      .post("/login", data: request.toJson())
      .then((res) => BaseResponse.fromJson(
      res.data, (d) => ResponseLogin.fromJson(d as Map<String, dynamic>)));

// Future<BaseResponse<User>> register(RequestRegister request) async {
//   var data = await request.toFormData();
//   return await _dio.post('/members', data: data).then((response) =>
//       BaseResponse.fromJson(response.data,
//           (json) => User.fromJson(json as Map<String, dynamic>)));
// }



}
