import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';
import 'package:without_get_x/apps/stores/app.store.dart';

class DefaultLayout extends StatelessWidget {
  final Widget? child;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final Color? backgroundColor;

  const DefaultLayout({
    super.key,
    required this.child,
    this.appBar,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final appStore = AppStore();

    final currentTabIndex = appStore.tabIndex.watch(context);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(child: child!),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        currentIndex: currentTabIndex,
        onTap: (index) => appStore.onItemTapped(index, context),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Products'),
        ],
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
