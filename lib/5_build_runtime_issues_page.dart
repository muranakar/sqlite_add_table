import 'package:flutter/material.dart';

class BuildRuntimeIssuesPage extends StatelessWidget {
  const BuildRuntimeIssuesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ビルドとランタイムの問題解決'),
      ),
      body: const Center(
        child: Text('一般的な問題とその解決方法'),
      ),
    );
  }
}
