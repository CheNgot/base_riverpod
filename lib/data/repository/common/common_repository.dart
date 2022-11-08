
import 'package:base_riverpod/data/model/base/result.dart';
import 'package:base_riverpod/data/model/common/common_location.dart';
import 'package:base_riverpod/data/model/common/common_setting.dart';

abstract class CommonRepository {
  Future<Result<List<CommonLocation>?>> loadProvinces();

  Future<Result<List<CommonLocation>?>> loadDistricts(int? provinceId);

  Future<Result<List<CommonLocation>?>> loadWards(int? districtId);

}
