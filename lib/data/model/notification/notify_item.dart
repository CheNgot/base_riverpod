import 'package:freezed_annotation/freezed_annotation.dart';

part 'notify_item.freezed.dart';

part 'notify_item.g.dart';

@freezed
class NotifyItem with _$NotifyItem {
  factory NotifyItem({
    String? icon_url,
    String? role_of_to_user,
    String? icon,
    String? created_at,
    String? role_of_from_user,
    String? short_body,
    String? title,
    String? body,
    String? type,
    bool? is_read,
    String? updated_at,
    String? resource_table_name,
    int? to_user_id,
    int? resource_id,
    int? id,
    int? from_user_id,
    String? status,
    String? content, // chỉ có khi load detail notification của promotion/news
  }) = _NotifyItem;

  factory NotifyItem.fromJson(Map<String, dynamic> json) => _$NotifyItemFromJson(json);
}
