/*
 * @Author: Cphayim
 * @Date: 2020-06-05 17:02:23
 * @LastEditTime: 2020-06-10 14:26:31
 * @Description: 自定义 dio 实例
 */
import 'package:dio/dio.dart';
import 'package:flutter_shop/config/index.dart';
import 'package:flutter_shop/services/interceptors.dart';

BaseOptions _options = BaseOptions(
  baseUrl: Config.baseUrl,
  connectTimeout: Config.connectTimeout,
  receiveTimeout: Config.receiveTimeout,
);

Dio myDio = Dio()
  ..options = _options
  ..interceptors.add(ResponseInterceptor())
  ..interceptors.add(LogInterceptor())
  ..interceptors.add(ExceptionInterceptor());
