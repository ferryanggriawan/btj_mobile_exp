import 'package:get/get.dart';
import 'package:with_get_x/apps/utils/error.util.dart';

class BaseAPI extends GetConnect {
  @override
  void onInit() {
    // 1. Setup Base URL
    httpClient.baseUrl = 'https://dummyjson.com';

    // 2. Setup Timeout
    httpClient.timeout = const Duration(seconds: 30);

    // 3. Request Modifier (Interceptor)
    // Berguna untuk menyisipkan Token Auth secara otomatis
    httpClient.addRequestModifier<dynamic>((request) {
      // request.headers['Authorization'] = 'Bearer token_disini';
      // request.headers['Accept'] = 'application/json';
      return request;
    });

    // 4. Response Modifier
    // Berguna untuk logging atau handle error global (misal: 401 Unauthorized)
    httpClient.addResponseModifier((request, response) {
      if (response.status.hasError) {
        // Gunakan AppError untuk memparsing respons yang gagal
        final appError = AppError.fromException(response);

        // Lempar error berupa string pesan agar mudah ditangkap catch di UI
        throw appError.message ?? 'Terjadi kesalahan tidak dikenal';
      }
      return response;
    });

    super.onInit();
  }

  static Map<String, String> serializeParams(Map<String, dynamic> map) {
    return map.map((key, value) => MapEntry(key, value.toString()));
  }
}
