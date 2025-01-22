import 'package:flutter/material.dart';

class OpenDatabasePage extends StatelessWidget {
  const OpenDatabasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('データベースを開く'),
      ),
      body: const Center(
        child: Text('データベースの作成と開き方について説明します'),
      ),
    );
  }
}
