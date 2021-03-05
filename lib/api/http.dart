import 'dart:collection';

import 'package:dio/dio.dart';
import 'HeaderInterceptors.dart';
import 'CookioInterceptors.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

/// 网络结果数据
/// Created by guoshuyu
/// Date: 2018-07-16
class ResultData {
  var data;
  bool result;
  int code;
  var headers;

  ResultData(this.data, this.result, this.code, {this.headers});
}

class HttpManager {
  static const CONTENT_TYPE_JSON = "application/json";
  static const CONTENT_TYPE_FORM = "application/x-www-form-urlencoded";

  Dio _dio = new Dio(); // 使用默认配置

  HttpManager() {
    _dio.interceptors.add(new HeaderInterceptors());

    _dio.interceptors.add(new CookioInterceptors());

    _dio.interceptors.add(CookieManager(CookieJar()));
    // _dio.interceptors.add(new LogsInterceptors());

    // _dio.interceptors.add(new ErrorInterceptors(_dio));

    // _dio.interceptors.add(new ResponseInterceptors());
  }

  ///发起网络请求
  ///[ url] 请求url
  ///[ params] 请求参数
  Future<ResultData> getFetch(url, params) async {
    _dio.get(url);
  }

  ///发起网络请求
  ///[ url] 请求url
  ///[ params] 请求参数
  Future<ResultData> postFetch(url, params) async {
    _dio.post(url);
  }
}

final HttpManager httpManager = new HttpManager();
