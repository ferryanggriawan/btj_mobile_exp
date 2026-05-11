import 'package:hive_ce_flutter/hive_ce_flutter.dart';
import 'package:flutter/material.dart';
import 'package:btj_mobile_exp/core/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router);
  }
}
