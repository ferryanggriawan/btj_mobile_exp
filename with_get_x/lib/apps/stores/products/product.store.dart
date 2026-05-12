import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:with_get_x/apps/api/product.api.dart';
import 'package:with_get_x/apps/utils/error.util.dart';

class ProductStore extends GetxController {
  RxBool loading = false.obs;
  var pagination = <String, dynamic>{'limit': 30, 'page': 1, 'skip': 0}.obs;
  RxList data = [].obs;
  RxInt totalData = 0.obs;

  ScrollController scrollController = ScrollController();

  final ProductApi api;
  ProductStore({required this.api});

  @override
  void onInit() {
    super.onInit();
    browse(payload: pagination);
    addScrollListener();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void browse({RxMap<String, dynamic>? payload}) async {
    try {
      final resp = await api.browse(params: payload);
      final products = resp['products'];

      totalData.value = resp['total'];
      data.assignAll([...data, ...products]);

      print('data: ${data.length} | total: ${totalData.value}');
    } catch (e) {
      AppError.showError(e, 'Failed to get product');
    }
  }

  void addScrollListener() {
    scrollController.addListener(() {
      var pixel = scrollController.position.pixels;
      var maxPixel = scrollController.position.maxScrollExtent;

      if (pixel == maxPixel) {
        if (data.length < totalData.value) {
          pagination['page'] += 1;
          pagination['skip'] = pagination['limit'] * (pagination['page'] - 1);

          browse(payload: pagination);
        }
      }
    });
  }
}
