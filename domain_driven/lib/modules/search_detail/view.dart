import 'package:flutter/material.dart';

class SearchDetailPage extends StatelessWidget {
  const SearchDetailPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    // the major Material Components.
    return Center(child: Text('Hello, world!'));
  }
}
