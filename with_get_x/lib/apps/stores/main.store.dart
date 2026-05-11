import 'package:get/get.dart';
import 'package:with_get_x/pages/home/home.page.dart';
import 'package:with_get_x/pages/products/product.page.dart';

class MainStore extends GetxController {
  var currentIndex = 0.obs;

  final pages = [HomePage(), ProductPage()];

  void changePage(int index) {
    currentIndex.value = index;
  }
}
