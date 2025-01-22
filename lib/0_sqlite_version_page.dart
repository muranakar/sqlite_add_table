import 'package:flutter/material.dart';

class SQLiteVersionPage extends StatelessWidget {
  const SQLiteVersionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SQLiteバージョン情報'),
      ),
      body: const Center(
        child: Text('バージョン情報と互換性について'),
      ),
    );
  }
}
