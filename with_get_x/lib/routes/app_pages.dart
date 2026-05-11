import 'package:get/get.dart';
import 'package:with_get_x/apps/stores/home/home.bind.dart';
import 'package:with_get_x/apps/stores/main.bind.dart';
import 'package:with_get_x/apps/stores/products/product.bind.dart';
import 'package:with_get_x/pages/app.page.dart';
import 'package:with_get_x/pages/home/home.page.dart';
import 'package:with_get_x/pages/products/product.detail.page.dart';
import 'package:with_get_x/pages/products/product.page.dart';
import 'package:with_get_x/routes/app_routes.dart';

class AppPages {
  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(name: Routes.MAIN, page: () => MainView(), binding: MainBinding()),
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding()),
    GetPage(
      name: Routes.PRODUCTS,
      page: () => ProductPage(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: Routes.PRODUCTS_DETAIL,
      page: () => ProductDetailPage(),
      binding: ProductDetailBinding(),
    ),
  ];
}
