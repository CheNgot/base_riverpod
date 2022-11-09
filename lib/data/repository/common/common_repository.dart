
import 'package:base_riverpod/data/model/base/result.dart';
import 'package:base_riverpod/data/model/common/common_country.dart';
import 'package:base_riverpod/data/model/common/response_banner.dart';

abstract class CommonRepository {
  Future<Result<List<CommonCountry>?>> loadCountries();

  Future<Result<List<ResponseBanner>?>> loadBanners();





}
