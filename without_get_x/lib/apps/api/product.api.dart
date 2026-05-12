import 'package:without_get_x/apps/api/base.api.dart';
import 'package:without_get_x/apps/utils/error.util.dart';

class ProductApi extends BaseAPI {
  Future<dynamic> browse({Map<String, dynamic>? params}) async {
    try {
      final resp = await instance.get('/products', queryParameters: params);

      return resp.data;
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

      final resp = await instance.get('/products/$id');

      return resp.data;
    } catch (e) {
      final appError = AppError.fromException(e);
      throw Exception('${appError.message}, code(${appError.code})');
    }
  }
}
