import 'package:dio/dio.dart';

class HttpManager {
  static final HttpManager _instance = HttpManager._internal();
  String baseUrl = "https://www.wanandroid.com";
  factory HttpManager() {
    return _instance;
  }

  HttpManager._internal() {
    // 初始化
    init();
  }

  Dio? _dio;

  void init() {
    _dio = Dio();
    _dio?.options.baseUrl = baseUrl;
    _dio?.options.connectTimeout = 5000 ;
    _dio?.options.receiveTimeout = 3000 ;
  }

  get dio {
    return _dio;
  }
}
