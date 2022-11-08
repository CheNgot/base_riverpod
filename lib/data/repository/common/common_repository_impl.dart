import 'package:base_riverpod/data/local/hive/hive_provider.dart';
import 'package:base_riverpod/data/model/base/result.dart';
import 'package:base_riverpod/data/model/common/common_location.dart';
import 'package:base_riverpod/data/model/common/common_setting.dart';
import 'package:base_riverpod/data/network/dio_provider.dart';
import 'package:base_riverpod/data/repository/common/common_repository.dart';

class CommonRepositoryImpl implements CommonRepository {
  CommonRepositoryImpl({required HiveProvider hiveProvider, required DioProvider dioProvider})
      : _dioProvider = dioProvider,
        _hiveProvider = hiveProvider;

  final DioProvider _dioProvider;
  final HiveProvider _hiveProvider;

  @override
  Future<Result<List<CommonLocation>?>> loadProvinces() {
    final savedProvinceList = _hiveProvider.getProvincesList();
    if (savedProvinceList != null && savedProvinceList.isNotEmpty) {
      return Result.guardFuture(() => Future.value(savedProvinceList));
    } else {
      return Result.guardFuture(() async {
        final baseResponse = await _dioProvider.loadProvinces();
        final provinceList = baseResponse.data;
        if (provinceList != null && provinceList.isNotEmpty) _hiveProvider.saveProvinces(provinceList);
        return provinceList;
      });
    }
  }

  @override
  Future<Result<List<CommonLocation>?>> loadDistricts(int? provinceId) => Result.guardFuture(() async {
        final baseResponse = await _dioProvider.loadDistricts(provinceId);
        return baseResponse.data;
      });

  @override
  Future<Result<List<CommonLocation>?>> loadWards(int? wardId) => Result.guardFuture(() async {
        final baseResponse = await _dioProvider.loadWards(wardId);
        return baseResponse.data;
      });
}
