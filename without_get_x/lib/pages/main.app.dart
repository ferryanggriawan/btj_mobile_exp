import 'package:flutter/material.dart';
import 'package:without_get_x/router/app.route.dart';
import 'package:without_get_x/widgets/apps/layouts/blank.dart';
import 'package:without_get_x/widgets/apps/nav/app_bar.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scaffoldMessengerKey: AppRouter.messengerKey,
      routerConfig: AppRouter.router,
      builder: (context, child) {
        return BlankLayout(
          appBar: BaseAppBar(title: 'title'),
          child: child,
        );
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
