import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:signals/signals_flutter.dart';
import 'package:without_get_x/router/app.route.dart';

class AppStore {
  // Inisialisasi store
  AppStore._internal();
  static final AppStore _instance = AppStore._internal();
  factory AppStore() => _instance;

  // state
  final currentTab = signal<Map>({'index': 0, 'name': 'Home'});
  final currentPath = signal<String>('/');
  final shellPaths = <String>['/', '/products'];

  // getter
  late final tabIndex = computed(() => currentTab.value['index']);
  late final tabName = computed(() => currentTab.value['name']);
  late final isShellRoute = computed(() {
    return shellPaths.any((path) => currentPath.value == path);
  });

  // actions
  void onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        AppRouter.context?.go('/');
        break;
      case 1:
        AppRouter.context?.go('/products');
        break;
    }

    currentTab.value = {'index': index, 'name': tabName.value};
  }

  void updateTitle(String? name) {
    name ?? tabName.value;

    currentTab.value = {'index': tabIndex.value, 'name': name};
  }

  void updatePath(String path) {
    currentPath.value = path;
  }
}
