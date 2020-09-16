import 'package:dio/dio.dart';
import 'package:layout_demo/error/error_interceptor.dart';

class Http {
  //超时时间
  static const int CONNECT_TIMEOUT = 30000;
  static const int RECEIVE_TIMEOUT = 30000;

  static Http _instance = Http._internal();
  factory Http() => _instance;

  Dio dio;

  Http._internal() {
    if (dio == null) {
      BaseOptions options = new BaseOptions(
          connectTimeout: CONNECT_TIMEOUT,
          receiveTimeout: RECEIVE_TIMEOUT,
          headers: {});

      dio = new Dio(options);
      //增加error拦截器
      dio.interceptors.add(ErrorInterceptor());
    }
  }
}
