import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:with_get_x/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}
