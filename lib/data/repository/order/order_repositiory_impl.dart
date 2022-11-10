import 'package:base_riverpod/data/local/hive/hive_provider.dart';
import 'package:base_riverpod/data/network/dio_provider.dart';
import 'package:base_riverpod/data/repository/order/order_api.dart';

import 'order_repository.dart';

class OrderRepositoryImpl implements OrderRepository{
  OrderRepositoryImpl({required HiveProvider hiveProvider, required DioProvider dioProvider})
      : _orderAPI = OrderAPI(dioProvider: dioProvider),
        _hiveProvider = hiveProvider;

  final OrderAPI _orderAPI;
  final HiveProvider _hiveProvider;
}