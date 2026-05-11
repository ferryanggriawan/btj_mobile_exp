import 'package:get/get.dart';
import 'package:with_get_x/apps/api/base.api.dart';
import 'package:with_get_x/apps/utils/error.util.dart';

class ProductApi extends BaseAPI {
  Future<dynamic> browse({RxMap<String, dynamic>? params}) async {
    try {
      Map<String, String> query = BaseAPI.serializeParams(
        params as Map<String, dynamic>,
      );

      final resp = await get('/products', query: query);

      return resp.body;
    } catch (e) {
      final appError = AppError.fromException(e);
      throw Exception('${appError.message}, code(${appError.code})');
    }
  }

  Future<dynamic> getById(String? id) async {
    try {
      if (id == null) {
        throw AppError(code: 'ID_NULL', message: 'ID tidak boleh null');
      }

      final resp = await get('/products/$id');

      return resp.body;
    } catch (e) {
      final appError = AppError.fromException(e);
      throw Exception('${appError.message}, code(${appError.code})');
    }
  }
}
