import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';
import 'package:without_get_x/apps/stores/product.store.dart';
import 'package:without_get_x/widgets/products/card.dart';

class ProductDetailPage extends StatefulWidget {
  final String? id;

  const ProductDetailPage({super.key, this.id});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final store = ProductStore();

  @override
  void initState() {
    super.initState();
    store.getById(widget.id);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final data = store.detail.watch(context);
    final loading = store.isLoading.watch(context);

    return Center(
      child: loading
          ? CircularProgressIndicator()
          : ProductCard(
              title: data['title'],
              description: data['description'],
              imageURL: data['images'][0],
              isDetail: true,
            ),
    );
  }
}
