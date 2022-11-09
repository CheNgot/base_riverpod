// import 'package:base_riverpod/data/local/hive/hive_provider.dart';
// import 'package:base_riverpod/data/model/base/base_request.dart';
// import 'package:base_riverpod/data/model/base/result.dart';
// import 'package:base_riverpod/data/model/common/common_location.dart';
// import 'package:base_riverpod/data/model/notification/notify_item.dart';
// import 'package:base_riverpod/data/network/dio_provider.dart';
// import 'package:base_riverpod/data/repository/notification/notification_repository.dart';
//
// class NotificationRepositoryImpl implements NotificationRepository {
//   NotificationRepositoryImpl({required HiveProvider hiveProvider, required DioProvider dioProvider})
//       : _dioProvider = dioProvider,
//         _hiveProvider = hiveProvider;
//
//   final DioProvider _dioProvider;
//   final HiveProvider _hiveProvider;
//
//   @override
//   Future<Result<List<NotifyItem>?>> loadNotifications(BaseRequest request) => Result.guardFuture(() async {
//         final baseResponse = await _dioProvider.loadNotifications();
//         return baseResponse.data;
//       });
//
//   @override
//   Future<Result<NotifyItem?>> loadDetailNotifications(int? id) => Result.guardFuture(() async {
//         final baseResponse = await _dioProvider.loadNotificationDetail(id);
//         return baseResponse.data;
//       });
// }
