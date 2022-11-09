

import 'package:base_riverpod/data/model/auth/request_login.dart';
import 'package:base_riverpod/data/model/auth/request_register.dart';
import 'package:base_riverpod/data/model/auth/response_login.dart';
import 'package:base_riverpod/data/model/auth/user.dart';
import 'package:base_riverpod/data/model/base/result.dart';

abstract class AuthRepository {

  Future<Result> deleteAccount();

  Future<Result<ResponseLogin?>> login(RequestLogin request);

  Future<Result<User?>> register(RequestRegister request);





}
