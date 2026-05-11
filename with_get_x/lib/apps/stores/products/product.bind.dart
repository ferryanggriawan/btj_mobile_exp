import 'package:get/get.dart';
import 'package:with_get_x/apps/api/product.api.dart';
import 'package:with_get_x/apps/stores/products/product.detail.store.dart';
import 'package:with_get_x/apps/stores/products/product.store.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductApi());
    Get.lazyPut(() => ProductStore(api: Get.find()));
    Get.lazyPut(() => ProductDetailStore(api: Get.find()));
  }
}

class ProductDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductApi());
    Get.lazyPut(() => ProductDetailStore(api: Get.find()));
  }
}
