import 'package:get/get.dart';
import 'package:with_get_x/apps/api/product.api.dart';
import 'package:with_get_x/apps/utils/error.util.dart';

class ProductDetailStore extends GetxController {
  String? productID;

  var data = {}.obs;
  var loading = true.obs;

  final ProductApi api;
  ProductDetailStore({required this.api});

  @override
  void onInit() {
    super.onInit();
    productID = Get.parameters['id'];
    getProduct(productID);
  }

  void getProduct(String? id) async {
    try {
      loading.value = true;
      final products = await api.getById(id);
      data.value = products;
    } catch (e) {
      AppError.showError(e, 'Failed to get product');
      loading.value = false;
    } finally {
      loading.value = false;
    }
  }
}
