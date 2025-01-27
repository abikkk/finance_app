import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiBaseHelper {
  static const String baseUrl = 'YOUR_BASE_URL_HERE';
  static final BaseOptions options = BaseOptions(
    baseUrl: baseUrl,
    responseType: ResponseType.json,
    connectTimeout: const Duration(seconds: 20),
    receiveTimeout: const Duration(seconds: 20),
  );

  static final Dio _dio = Dio(options);

  static void addInterceptors() {
    _dio.interceptors.add(CustomInterceptor());
  }

  Future<Response> getHTTP(String url) async {
    try {
      return await _dio.get(url);
    } on DioError catch (e) {
      rethrow; // or return a custom response
    }
  }

  Future<Response> postHTTP(String url, dynamic data) async {
    try {
      return await _dio.post(url, data: data);
    } on DioError catch (e) {
      rethrow;
    }
  }

  Future<Response> putHTTP(String url, dynamic data) async {
    try {
      return await _dio.put(url, data: data);
    } on DioError catch (e) {
      rethrow;
    }
  }

  Future<Response> deleteHTTP(String url) async {
    try {
      return await _dio.delete(url);
    } on DioError catch (e) {
      rethrow;
    }
  }
}

class CustomInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint('## REQUEST[${options.method}] => PATH: ${options.path}');
    return handler
        .next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint(
        '## RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    return handler.next(
        response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint(
        '## ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    return handler
        .next(err);
  }
}
