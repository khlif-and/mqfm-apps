import 'package:dio/dio.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['ngrok-skip-browser-warning'] = 'true';

    final token = await PreferencesHelper.getToken();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    String message;

    if (err.response != null) {
      final data = err.response?.data;
      if (data is Map<String, dynamic> && data.containsKey('message')) {
        message = data['message'];
      } else {
        switch (err.response?.statusCode) {
          case 400:
            message = 'Permintaan tidak valid';
            break;
          case 401:
            message = 'Sesi telah berakhir, silakan login kembali';
            break;
          case 403:
            message = 'Akses ditolak';
            break;
          case 404:
            message = 'Data tidak ditemukan';
            break;
          case 500:
            message = 'Terjadi kesalahan pada server';
            break;
          default:
            message = 'Terjadi kesalahan (${err.response?.statusCode})';
        }
      }
    } else {
      switch (err.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          message = 'Koneksi timeout, coba lagi';
          break;
        case DioExceptionType.connectionError:
          message = 'Tidak ada koneksi internet';
          break;
        default:
          message = 'Terjadi kesalahan koneksi';
      }
    }

    handler.next(
      DioException(
        requestOptions: err.requestOptions,
        response: err.response,
        type: err.type,
        error: message,
      ),
    );
  }
}
