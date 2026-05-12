import 'package:flutter/material.dart';
import 'package:without_get_x/apps/extension/string.ext.dart';
import 'package:without_get_x/apps/utils/snackbar.util.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          TextButton(
            onPressed: () {
              Toast.showError(title: 'Error', message: 'Error Message');
            },
            child: Text('show toast'.toTitleCase()),
          ),
        ],
      ),
    );
  }
}
