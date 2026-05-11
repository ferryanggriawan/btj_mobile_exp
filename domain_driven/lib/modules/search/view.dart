import 'package:btj_mobile_exp/models/app.model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  Future<void> _handleRefresh() async {
    // 1. Tambahkan delay atau panggil API di sini
    await Future.delayed(const Duration(seconds: 2));

    // 2. Update data/state Anda
    debugPrint("Data berhasil diperbarui");

    // 3. Jika menggunakan StatefulWidget, panggil setState(){}

    final abc = AppModel(id: '1', name: 'name');
    print('abc.toJson(): ${abc.toJson()}');
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    // the major Material Components.
    return RefreshIndicator(
      onRefresh: _handleRefresh, // Fungsi yang dijalankan saat ditarik
      color: Colors.white, // Warna spinner
      backgroundColor: Colors.blue, // Warna latar belakang spinner
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => ListTile(
          title: Text("Item ke-$index"),
          onTap: () {
            context.push('/search/${index.toString()}');
          },
        ),
      ),
    );
  }
}
