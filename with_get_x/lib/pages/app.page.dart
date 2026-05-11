import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:with_get_x/apps/stores/main.store.dart';
import 'package:with_get_x/widgets/apps/layouts/screen.dart';
import 'package:with_get_x/widgets/apps/nav/app_bar.dart';
import 'package:with_get_x/widgets/apps/nav/bottom_bar.dart';

class MainView extends GetView<MainStore> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: BaseAppBar(title: 'Aplikasi Flutter'),
      bottomNavigationBar: BaseBottomBar(),
      child: Obx(
        () => IndexedStack(
          index: controller.currentIndex.value,
          children: controller.pages,
        ),
      ),
    );
  }
}
