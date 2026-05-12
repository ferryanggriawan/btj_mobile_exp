import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:without_get_x/pages/error.page.dart';
import 'package:without_get_x/pages/home/home.page.dart';
import 'package:without_get_x/pages/products/detail.page.dart';
import 'package:without_get_x/pages/products/product.page.dart';
import 'package:without_get_x/widgets/apps/layouts/default.dart';

class AppRouter {
  static final GlobalKey<ScaffoldMessengerState> messengerKey =
      GlobalKey<ScaffoldMessengerState>();

  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  static final BuildContext? context = rootNavigatorKey.currentContext;
  static final ScaffoldMessengerState? state = messengerKey.currentState;

  static final GoRouter router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return DefaultLayout(child: child);
        },
        routes: [
          GoRoute(
            path: '/',
            name: 'home',
            builder: (context, state) => const HomePage(),
          ),

          GoRoute(
            path: '/products',
            name: 'products',
            builder: (context, state) => const ProductPage(),
          ),
        ],
      ),

      GoRoute(
        path: '/products/:id',
        name: 'product_detail',
        builder: (context, state) {
          final id = state.pathParameters['id'];
          return ProductDetailPage(id: id);
        },
      ),
    ],

    errorBuilder: (context, state) => const ErrorPage(),
  );
}
