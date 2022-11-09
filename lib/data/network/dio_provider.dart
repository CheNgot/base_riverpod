import 'package:base_riverpod/data/local/hive/hive_provider.dart';
import 'package:base_riverpod/resources/app_resource.dart';
import 'package:dio/dio.dart';

import 'package:dio/adapter.dart';
import 'package:flutter/foundation.dart';

class DioProvider with DioMixin implements Dio {
  DioProvider({required HiveProvider hiveProvider})
      : _hiveProvider = hiveProvider {
    Map<String, String> headers = {
      "cache-control": "no-cache",
      "Accept": "application/json",
    };
    options = BaseOptions(
      baseUrl:
      kReleaseMode?
      Constants.endpointRelease : Constants.endpoint,
      // Constants.endpointRelease,
      contentType: 'application/json',
      headers: headers,
      connectTimeout: 50000,
      sendTimeout: 50000,
      receiveTimeout: 50000,
    );
    //
    this.options = options;

  
      // Local Log
      interceptors.add(LogInterceptor(responseBody: true, requestBody: true));

    interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      final token = _hiveProvider.getBearerToken();
      options.headers["Authorization"] = "Bearer $token";
      handler.next(options);
    }));

    httpClientAdapter = DefaultHttpClientAdapter();
  }

  final HiveProvider _hiveProvider;

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
