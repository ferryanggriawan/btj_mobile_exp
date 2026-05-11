import 'package:btj_mobile_exp/middleware/base.middleware.dart';
import 'package:btj_mobile_exp/modules/about/view.dart';
import 'package:btj_mobile_exp/modules/search/view.dart';
import 'package:btj_mobile_exp/modules/search_detail/view.dart';
import 'package:btj_mobile_exp/modules/auth/view.dart';
import 'package:btj_mobile_exp/modules/home/View.dart';
import 'package:btj_mobile_exp/widgets/layouts/default.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  redirect: authGuard,
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return MainWrapper(child: child); //
      },
      routes: [
        GoRoute(
          path: '/',
          name: 'Beranda',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/search',
          name: 'Search',
          builder: (context, state) => const SearchPage(),
        ),
        GoRoute(
          path: '/about',
          name: 'About',
          builder: (context, state) => const AboutPage(),
        ),
      ],
    ),

    GoRoute(path: '/auth', builder: (context, state) => const AuthPage()),
    GoRoute(
      path: '/search/:id',
      name: 'Search Detail',
      builder: (context, state) {
        final itemId = state.pathParameters['id'] ?? '0';

        return SearchDetailPage(id: itemId);
      },
    ),
  ],
);
