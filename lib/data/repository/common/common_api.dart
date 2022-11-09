

import 'package:base_riverpod/data/model/base/base_response.dart';
import 'package:base_riverpod/data/model/common/common_country.dart';
import 'package:base_riverpod/data/model/common/response_banner.dart';
import 'package:base_riverpod/data/network/dio_provider.dart';

class CommonAPI {
  CommonAPI({required DioProvider dioProvider}) : _dio = dioProvider;

  final DioProvider _dio;

  Future<BaseResponse<List<CommonCountry>?>> loadCountries() => _dio
      .get("/list-country")
      .then((res) => BaseResponse.fromJson(res.data, (d) {
    return (d as List)
        .map((data) => CommonCountry.fromJson(data))
        .toList();
  }));

  Future<BaseResponse<List<ResponseBanner>?>> getBanners() =>
      _dio.get("banners").then((res) => BaseResponse.fromJson(res.data, (d) {
        return (d as List)
            .map((data) => ResponseBanner.fromJson(data))
            .toList();
      }));





}
