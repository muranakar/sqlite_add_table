import 'package:flutter/material.dart';

class SqlBasicsPage extends StatelessWidget {
  const SqlBasicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SQL基本情報'),
      ),
      body: const Center(
        child: Text('SQLiteで使用する基本的なSQL文について'),
      ),
    );
  }
}
