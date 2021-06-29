import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

const int _PORT = 4000;
const String _androidUrl = 'http://10.0.2.2:';
const String _othersUrl = 'http://localhost:';

final String _baseUrl =
    Platform.isAndroid ? '$_androidUrl$_PORT/api' : '$_othersUrl$_PORT/api';

@module
abstract class DioModule {
  // You can register named preemptive types like follows

  @Named('BaseOptions')
  BaseOptions get baseOptions => BaseOptions(
        baseUrl: _baseUrl,
        receiveDataWhenStatusError: true,
        receiveTimeout: 5000,
        connectTimeout: 5000,
        sendTimeout: 5000,
      );

  @injectable
  Dio dio(@Named('BaseOptions') BaseOptions baseOptions) => Dio(baseOptions);
}
