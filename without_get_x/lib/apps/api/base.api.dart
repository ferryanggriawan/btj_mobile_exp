import 'package:dio/dio.dart';

abstract class BaseAPI {
  // Inisialisasi Dio dengan konfigurasi dasar
  final Dio instance = Dio(
    BaseOptions(
      baseUrl: "https://dummyjson.com",
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
    ),
  );

  // Menambahkan interceptor untuk logging atau auth token (Optional)
  BaseAPI() {
    // instance.interceptors.add(LogInterceptor(responseBody: true));
  }
}
