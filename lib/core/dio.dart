import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../product/constants/network_costants.dart';

/* @module
abstract class NetworkClient {
  final Dio dio = Dio();

  BaseOptions options = BaseOptions(
    baseUrl: NetworkConstants.BASE_URL,
    connectTimeout:
        const Duration(milliseconds: NetworkConstants.CONNECTION_TIMEOUT),
    receiveTimeout:
        const Duration(milliseconds: NetworkConstants.RECIEVE_TIMEOUT),
    headers: {"Content-Type": "application/json; charset=utf-8"},
  );

  @singleton
  Dio getDio() {
    dio.options = options;
    dio.interceptors.add(
        LogInterceptor(error: true, requestBody: true, responseBody: true));
    return dio;
  }
} */

@module
abstract class RegisterModule {
  @singleton
  Dio dio() {
    BaseOptions options = BaseOptions(
      baseUrl: NetworkConstants.BASE_URL,
      connectTimeout:
          const Duration(seconds: NetworkConstants.CONNECTION_TIMEOUT),
      receiveTimeout: const Duration(seconds: NetworkConstants.RECIEVE_TIMEOUT),
      headers: {"Content-Type": "application/json; charset=utf-8"},
    );

    final dio = Dio(BaseOptions(baseUrl: NetworkConstants.BASE_URL));
    dio.options = options;
    dio.interceptors.add(
        LogInterceptor(error: true, requestBody: true, responseBody: true));
    return dio;
  }
}
