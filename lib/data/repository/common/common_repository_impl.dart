

import 'package:base_riverpod/data/local/hive/hive_provider.dart';
import 'package:base_riverpod/data/model/base/result.dart';
import 'package:base_riverpod/data/model/common/common_country.dart';
import 'package:base_riverpod/data/network/dio_provider.dart';

import 'common_api.dart';
import 'common_repository.dart';

class CommonRepositoryImpl implements CommonRepository {
  CommonRepositoryImpl(
      {required HiveProvider hiveProvider, required DioProvider dioProvider})
      : _commonAPI = CommonAPI(dioProvider: dioProvider),
        _hiveProvider = hiveProvider;

  final CommonAPI _commonAPI;
  final HiveProvider _hiveProvider;

  @override
  Future<Result<List<CommonCountry>?>> loadCountries() =>
      Result.guardFuture(() async {
        final baseResponse = await _commonAPI.loadCountries();
        return baseResponse.data;
      });



}
