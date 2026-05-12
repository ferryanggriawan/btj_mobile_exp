import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:without_get_x/apps/extension/string.ext.dart';
import 'package:without_get_x/apps/utils/snackbar.util.dart';
import 'package:without_get_x/widgets/apps/layouts/blank.dart';
import 'package:without_get_x/widgets/apps/nav/app_bar.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlankLayout(
      appBar: BaseAppBar(title: 'Error Page'),
      child: Column(
        mainAxisAlignment: .center,
        children: [
          TextButton(
            onPressed: () {
              Toast.showError(title: 'Error', message: 'Error Message');
            },
            child: Text('how toast'.toTitleCase()),
          ),
          TextButton(
            onPressed: () {
              GoRouter.of(context).go('/');
            },
            child: Text('how toast'.toTitleCase()),
          ),
        ],
      ),
    );
  }
}
