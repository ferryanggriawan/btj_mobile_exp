import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:signals/signals_flutter.dart';
import 'package:without_get_x/apps/stores/product.store.dart';
import 'package:without_get_x/router/app.route.dart';
import 'package:without_get_x/widgets/products/card.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final store = ProductStore();

  Map<String, dynamic>? pagination;
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    pagination = store.pagination.watch(context);

    store.browse(payload: pagination);

    scrollController.addListener(() {
      var pixel = scrollController.position.pixels;
      var maxPixel = scrollController.position.maxScrollExtent;

      if (pixel == maxPixel) {
        if (store.data.length < store.totalData.value) {
          pagination?['page'] += 1;
          pagination?['skip'] =
              pagination?['limit'] * (pagination?['page'] - 1);

          store.browse(payload: pagination);
        }
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final data = store.data.watch(context);

    return RefreshIndicator(
      onRefresh: () async {
        store.browse(payload: store.pagination.value);
      },
      child: GridView.builder(
        controller: scrollController,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.9,
        ),
        itemCount: data.length,
        itemBuilder: (context, index) {
          final product = data[index];
          return ProductCard(
            title: product['title'],
            imageURL: product['thumbnail'],
            onTap: () {
              AppRouter.context?.push('/products/${product['id']}');
            },
          );
        },
      ),
    );
  }
}
