
import 'package:base_riverpod/data/model/base/base_request.dart';
import 'package:base_riverpod/data/model/base/result.dart';
import 'package:base_riverpod/data/model/common/common_location.dart';
import 'package:base_riverpod/data/model/common/common_setting.dart';
import 'package:base_riverpod/data/model/notification/notify_item.dart';

abstract class NotificationRepository {
  Future<Result<List<NotifyItem>?>> loadNotifications(BaseRequest request);

  // Dùng để load content của notify promotion/new
  Future<Result<NotifyItem?>> loadDetailNotifications(int? id);

}
