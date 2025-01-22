import 'package:flutter/material.dart';

class OpenAssetDatabasePage extends StatelessWidget {
  const OpenAssetDatabasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('アセットデータベースを開く'),
      ),
      body: const Center(
        child: Text('アプリケーションに同梱されたデータベースの利用方法'),
      ),
    );
  }
}
