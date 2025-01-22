import 'package:flutter/material.dart';

class DevTipsPage extends StatelessWidget {
  const DevTipsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('開発のヒント'),
      ),
      body: const Center(
        child: Text('開発者向けの便利な情報とテクニック'),
      ),
    );
  }
}
