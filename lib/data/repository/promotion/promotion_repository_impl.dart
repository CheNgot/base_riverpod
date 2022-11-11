import 'package:base_riverpod/data/local/hive/hive_provider.dart';
import 'package:base_riverpod/data/network/dio_provider.dart';
import 'package:base_riverpod/data/repository/order/order_api.dart';
import 'package:base_riverpod/data/repository/promotion/promotion_api.dart';
import 'package:base_riverpod/data/repository/promotion/promotion_repository.dart';


class PromotionRepositoryImpl implements PromotionRepository{
  PromotionRepositoryImpl({required HiveProvider hiveProvider, required DioProvider dioProvider})
      : _promotionAPI = PromotionAPI(dioProvider: dioProvider),
        _hiveProvider = hiveProvider;

  final PromotionAPI _promotionAPI;
  final HiveProvider _hiveProvider;
}