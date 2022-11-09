import 'package:base_riverpod/data/local/hive/hive_provider.dart';
import 'package:base_riverpod/data/network/app_dio.dart';
import 'package:base_riverpod/data/network/dio_provider.dart';
import 'package:base_riverpod/data/repository/auth/auth_repository.dart';
import 'package:base_riverpod/data/repository/auth/auth_repository_impl.dart';
import 'package:base_riverpod/data/repository/common/common_repository.dart';
import 'package:base_riverpod/data/repository/common/common_repository_impl.dart';
import 'package:base_riverpod/data/repository/notification/notification_repository.dart';
import 'package:base_riverpod/data/repository/notification/notification_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider<DioProvider>((ref) => DioProvider(hiveProvider: ref.read(hiveProvider)));

final hiveProvider = Provider<HiveProvider>((ref) => HiveProvider());

final commonRepositoryProvider = Provider<CommonRepository>(
    (ref) => CommonRepositoryImpl(hiveProvider: ref.read(hiveProvider), dioProvider: ref.read(dioProvider)));

final authRepositoryProvider = Provider<AuthRepository>(
    (ref) => AuthRepositoryImpl(hiveProvider: ref.read(hiveProvider), dioProvider: ref.read(dioProvider)));

// final notificationRepositoryProvider = Provider<NotificationRepository>(
//     (ref) => NotificationRepositoryImpl(hiveProvider: ref.read(hiveProvider), dioProvider: ref.read(dioProvider)));
