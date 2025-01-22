import 'package:flutter/material.dart';

class DevelopmentGuidePage extends StatelessWidget {
  const DevelopmentGuidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SQLite開発ガイド'),
      ),
      body: const Center(
        child: Text('包括的な開発ガイドライン'),
      ),
    );
  }
}
