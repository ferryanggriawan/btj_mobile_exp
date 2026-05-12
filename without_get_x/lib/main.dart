import 'package:flutter/material.dart';
import 'package:without_get_x/pages/main.app.dart';
import 'package:without_get_x/router/route.middleware.dart';

void main() {
  const app = MainApp();

  app.key;

  routemiddleware();

  runApp(app);
}
