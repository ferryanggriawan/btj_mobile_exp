import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:with_get_x/apps/stores/products/product.store.dart';
import 'package:with_get_x/widgets/apps/layouts/page.dart';
import 'package:with_get_x/widgets/products/card.dart';

class ProductPage extends GetView<ProductStore> {
  const ProductPage({super.key});

  RxMap<String, dynamic> get payload => controller.pagination;
  ScrollController get scrollController => controller.scrollController;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      child: RefreshIndicator(
        onRefresh: () async {
          payload['page'] = 1;
          payload['skip'] = 0;
          controller.browse(payload: payload);
        },
        child: Obx(
          () => GridView.builder(
            controller: scrollController,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.9,
            ),
            itemCount: controller.data.length,
            itemBuilder: (context, index) {
              final product = controller.data[index];
              return ProductCard(
                title: product['title'],
                imageURL: product['thumbnail'],
                onTap: () => Get.toNamed('/products/${product['id']}'),
              );
            },
          ),
        ),
      ),
    );
  }
}
