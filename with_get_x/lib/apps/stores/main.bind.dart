import 'package:get/get.dart';
import 'package:with_get_x/apps/api/product.api.dart';
import 'package:with_get_x/apps/stores/main.store.dart';
import 'package:with_get_x/apps/stores/products/product.store.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainStore());
    Get.lazyPut(() => ProductStore(api: Get.put(ProductApi())));
  }
}
