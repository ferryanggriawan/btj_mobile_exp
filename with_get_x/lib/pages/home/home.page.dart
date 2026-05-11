import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:with_get_x/apps/stores/home/home.store.dart';
import 'package:with_get_x/widgets/apps/layouts/page.dart';
import 'package:with_get_x/widgets/products/card.dart';

class HomePage extends GetView<HomeStore> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(child: ProductCard());
  }
}
