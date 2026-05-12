import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:without_get_x/router/app.route.dart';
import 'package:without_get_x/widgets/apps/grids/column.dart';

class Toast {
  static void showError({String title = 'Error', String message = ''}) {
    final titleStyle = TextStyle(color: Colors.white, fontSize: 16);
    final textStyle = TextStyle(color: Colors.white);

    final view = PlatformDispatcher.instance.implicitView;

    final pixelRatio = view?.devicePixelRatio;
    final logicalSize = view!.physicalSize / pixelRatio!;

    AppRouter.state?.showSnackBar(
      SnackBar(
        margin: EdgeInsets.only(
          bottom: logicalSize.height - 150, // Dorong ke atas
          left: 10,
          right: 10,
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Mengatur radius di sini
        ),
        content: ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 75, // Tentukan tinggi maksimal di sini
            minHeight: 75,
          ),
          child: SingleChildScrollView(
            child: BaseColumn(
              children: [
                Text(title, style: titleStyle),
                Text(message, style: textStyle),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.red,
        action: SnackBarAction(
          label: 'TUTUP',
          textColor: Colors.white,
          onPressed: () {
            // Otomatis menutup saat ditekan
          },
        ),
      ),
    );
  }
}
