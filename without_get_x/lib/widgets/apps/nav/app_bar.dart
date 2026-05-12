import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:signals/signals_flutter.dart';
import 'package:without_get_x/apps/stores/app.store.dart';
import 'package:without_get_x/router/app.route.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  BaseAppBar({super.key, this.title});

  final store = AppStore();

  @override
  Widget build(BuildContext context) {
    final title = store.tabName.watch(context);

    return AppBar(
      leading: renderLeading(context),
      title: Text(title ?? 'Aplikasi Flutter'),
      actions: [
        IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        IconButton(
          icon: const Icon(Icons.notifications_none),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize {
    double height = kToolbarHeight;

    return Size.fromHeight(height);
  }

  Widget? renderLeading(BuildContext context) {
    final isShellRoute = store.isShellRoute.watch(context);

    if (isShellRoute) return null;

    return IconButton(
      onPressed: () {
        AppRouter.context?.pop();
      },
      icon: Icon(Icons.arrow_back),
    );
  }
}
