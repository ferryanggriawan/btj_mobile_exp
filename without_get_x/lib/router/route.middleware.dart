import 'package:without_get_x/apps/extension/string.ext.dart';
import 'package:without_get_x/apps/stores/app.store.dart';
import 'package:without_get_x/router/app.route.dart';

void routemiddleware() {
  AppRouter.router.routerDelegate.addListener(() {
    updateAppBar();
  });
}

void updateAppBar() {
  final store = AppStore();
  final name = AppRouter.router.routerDelegate.state.name;

  store.updateTitle(name?.replaceAll('_', ' ').toTitleCase());
  store.updatePath(AppRouter.router.routerDelegate.state.path!);
}
