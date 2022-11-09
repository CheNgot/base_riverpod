

import 'package:base_riverpod/data/local/hive/hive_provider.dart';
import 'package:base_riverpod/data/model/auth/request_login.dart';
import 'package:base_riverpod/data/model/auth/request_register.dart';
import 'package:base_riverpod/data/model/auth/response_login.dart';
import 'package:base_riverpod/data/model/auth/user.dart';
import 'package:base_riverpod/data/model/base/result.dart';
import 'package:base_riverpod/data/network/dio_provider.dart';

import 'auth_api.dart';
import 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({required HiveProvider hiveProvider, required DioProvider dioProvider})
      : _authAPI = AuthAPI(dioProvider: dioProvider),
        _hiveProvider = hiveProvider;

  final AuthAPI _authAPI;
  final HiveProvider _hiveProvider;

  @override
  Future<Result> deleteAccount() =>Result.guardFuture(() async {
    final baseResponse = await _authAPI.deleteAccount();
    return baseResponse;
  });

  @override
  Future<Result<ResponseLogin?>> login(RequestLogin request) => Result.guardFuture(() async {
        final baseResponse = await _authAPI.login(request);
        print("baseResponseLogin=="+baseResponse.toString());
        return baseResponse.data;
      });

  @override
  Future<Result<User?>> register(RequestRegister request) {
    // TODO: implement register
    throw UnimplementedError();
  }

 

 
}
