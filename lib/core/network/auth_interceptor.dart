// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:kartal/kartal.dart';

import 'package:student_app/features/login/data/repositories/login_repository.dart';
import 'package:student_app/product/di/injection.dart';
import 'package:student_app/product/models/refresh/request/refresh_request.dart';
import 'package:student_app/product/models/refresh/response/refresh_response.dart';

class AuthInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
      /* Check JWT token */
      RequestOptions options,
      RequestInterceptorHandler handler) async {
    final token = await getIt.get<FlutterSecureStorage>().read(key: "token");
    if (token.isNotNullOrNoEmpty) {
      options.headers["Authorization"] = "Bearer $token";
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    /* Refresh token imp */
    if (err.response?.statusCode == 401 &&
        await getIt.get<FlutterSecureStorage>().containsKey(key: "refresh")) {
      final refresh =
          await getIt.get<FlutterSecureStorage>().read(key: "refresh");

      RefreshResponse? newToken = await getIt
          .get<ILoginRepository>()
          .refresh(RefreshRequest(refresh: refresh ?? ""))
          .catchError((onError) => throw onError);

      await getIt
          .get<FlutterSecureStorage>()
          .write(key: "token", value: newToken?.token.toString());
    }
    super.onError(err, handler);
  }
}
