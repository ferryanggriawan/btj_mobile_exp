import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:with_get_x/apps/stores/products/product.detail.store.dart';
import 'package:with_get_x/widgets/apps/layouts/screen.dart';
import 'package:with_get_x/widgets/apps/nav/app_bar.dart';
import 'package:with_get_x/widgets/products/card.dart';

class ProductDetailPage extends GetView<ProductDetailStore> {
  const ProductDetailPage({super.key});

  Map<dynamic, dynamic> get data => controller.data;
  RxBool get loading => controller.loading;

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: BaseAppBar(title: 'Detail Produk'),
      child: Center(
        child: Obx(() {
          return controller.loading.value
              ? CircularProgressIndicator()
              : ProductCard(
                  title: data['title'],
                  description: data['description'],
                  imageURL: data['images'][0],
                  isDetail: true,
                );
        }),
      ),
    );
  }
}
