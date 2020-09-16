import 'package:dio/dio.dart';

class AppException implements Exception {
  final String _message;
  final int _code;

  AppException([this._code, this._message]);

  factory AppException.create(DioError error) {
    return AppException(-1,"fail");
  }
}

// class BadRequestException extends AppException {
//   BadRequestException([int code, String message]) : super(code, message);
// }
