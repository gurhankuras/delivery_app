import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioModule {
  @injectable
  Dio get dio => Dio();
}

@module
abstract class BaseOptionsModule {
  @injectable
  BaseOptions get baseOptions => BaseOptions();
}
