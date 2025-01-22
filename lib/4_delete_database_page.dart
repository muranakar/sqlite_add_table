import 'package:flutter/material.dart';

class DeleteDatabasePage extends StatelessWidget {
  const DeleteDatabasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('データベースの削除'),
      ),
      body: const Center(
        child: Text('データベースの削除方法と注意点'),
      ),
    );
  }
}
