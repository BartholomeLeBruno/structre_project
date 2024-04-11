import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class Module {
  @lazySingleton
  Dio get httpClient {
    Dio dio = Dio();
    dio.options.baseUrl = "https://google.com/";
    return dio;
  }
}
