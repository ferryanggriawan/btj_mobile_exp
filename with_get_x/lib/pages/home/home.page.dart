import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:with_get_x/apps/stores/home/home.store.dart';
import 'package:with_get_x/widgets/apps/grids/column.dart';
import 'package:with_get_x/widgets/apps/layouts/page.dart';

class HomePage extends GetView<HomeStore> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const apiUrl = String.fromEnvironment('API_URL');
    return BasePage(child: BaseColumn(children: [Text('API_URL: $apiUrl')]));
  }
}
