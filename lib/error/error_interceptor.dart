import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:layout_demo/error/app_exception.dart';

class ErrorInterceptor extends Interceptor {
  @override
  Future onError(DioError error) {
    AppException appException = AppException.create(error);
    debugPrint('[DIO] error=${appException.toString()}');
    error.error = appException;
    return super.onError(error);
  }
}
