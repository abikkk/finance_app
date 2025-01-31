import 'package:dio/dio.dart';
import 'package:finance_app/services/token_helper.dart';
import 'package:finance_app/utils/api_endpoints.dart';

class DioService {
  TokenHelper tokenHelper = TokenHelper();
  static final baseUrl = ApiEndpoints.baseURL;

  static final DioService _instance = DioService._internal();

  factory DioService() => _instance;

  final Dio _dio;

  DioService._internal()
      : _dio = Dio(BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(seconds: 20),
          receiveTimeout: const Duration(seconds: 20),
        )) {
    _setupInterceptors();
  }

  _setupInterceptors() async {
    String token = '';
    await tokenHelper.getToken().then((_) => token = _);

    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        if (token.trim().isNotEmpty) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        options.headers['Content-Type'] = 'application/json';
        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        return handler.next(e);
      },
    ));
  }

  Future<Response> get(String path,
      {Map<String, dynamic>? queryParameters}) async {
    return await _dio.get(path, queryParameters: queryParameters);
  }

  Future<Response> post(String path, {dynamic data}) async {
    return await _dio.post(path, data: data);
  }

  Future<Response> put(String url, {dynamic data}) async {
    try {
      return await _dio.put(url, data: data);
    } on DioException {
      rethrow;
    }
  }

  Future<Response> delete(String url) async {
    try {
      return await _dio.delete(url);
    } on DioException {
      rethrow;
    }
  }
}

// class CustomInterceptor extends Interceptor {
//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     debugPrint('## REQUEST[${options.method}] => PATH: ${options.path}');
//     return handler.next(options);
//   }
//
//   @override
//   Future<void> onResponse(
//       Response response, ResponseInterceptorHandler handler) async {
//     debugPrint(
//         '## RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
//     return handler.next(response);
//   }
//
//   @override
//   void onError(DioException err, ErrorInterceptorHandler handler) {
//     debugPrint(
//         '## ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
//     return handler.next(err);
//   }
// }
