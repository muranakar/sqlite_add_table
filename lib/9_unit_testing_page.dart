import 'package:flutter/material.dart';

class UnitTestingPage extends StatelessWidget {
  const UnitTestingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ユニットテスト'),
      ),
      body: const Center(
        child: Text('SQLiteを使用したアプリケーションのテスト方法'),
      ),
    );
  }
}
