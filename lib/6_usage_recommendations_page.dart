import 'package:flutter/material.dart';

class UsageRecommendationsPage extends StatelessWidget {
  const UsageRecommendationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('使用に関する推奨事項'),
      ),
      body: const Center(
        child: Text('SQLiteを効果的に使用するためのベストプラクティス'),
      ),
    );
  }
}
