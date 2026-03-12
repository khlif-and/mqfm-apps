import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mqfm_apps/core/network/api_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {
  static Dio? _dio;
  static Dio? _dioScraping;

  static Dio get instance {
    _dio ??= _createDio(dotenv.env['BASE_URL'] ?? '');
    return _dio!;
  }

  static Dio get scrapingInstance {
    _dioScraping ??= _createDio(dotenv.env['BASE_URL_SCRAPING'] ?? '');
    return _dioScraping!;
  }

  static Dio _createDio(String baseUrl) {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    dio.interceptors.add(ApiInterceptor());
    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
      ));
    }

    return dio;
  }
}
