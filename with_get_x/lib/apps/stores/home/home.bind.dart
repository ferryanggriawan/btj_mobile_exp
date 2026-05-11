import 'package:get/get.dart';
import 'package:with_get_x/apps/stores/home/home.store.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeStore());
  }
}
