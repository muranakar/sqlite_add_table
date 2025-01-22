import 'package:flutter/material.dart';

void main() {
  runApp(const SQLiteGuideApp());
}

class SQLiteGuideApp extends StatelessWidget {
  const SQLiteGuideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SQLite Guide',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: const SQLiteGuidePage(),
    );
  }
}

class SQLiteGuidePage extends StatelessWidget {
  const SQLiteGuidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SQLite Guide'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildGuideItem(
            context,
            'データベースを開く',
            '/open-database',
            'データベースの作成と開き方について説明します',
          ),
          _buildGuideItem(
            context,
            'アセットデータベースを開く',
            '/open-asset-database',
            'アプリケーションに同梱されたデータベースの利用方法',
          ),
          _buildGuideItem(
            context,
            'SQL基本情報',
            '/sql-basics',
            'SQLiteで使用する基本的なSQL文について',
          ),
          _buildGuideItem(
            context,
            'データベースの削除',
            '/delete-database',
            'データベースの削除方法と注意点',
          ),
          _buildGuideItem(
            context,
            'ビルドとランタイムの問題解決',
            '/build-runtime-issues',
            '一般的な問題とその解決方法',
          ),
          _buildGuideItem(
            context,
            '使用に関する推奨事項',
            '/usage-recommendations',
            'SQLiteを効果的に使用するためのベストプラクティス',
          ),
          _buildGuideItem(
            context,
            '開発のヒント',
            '/dev-tips',
            '開発者向けの便利な情報とテクニック',
          ),
          _buildGuideItem(
            context,
            'SQLiteバージョン情報',
            '/sqlite-version',
            'バージョン情報と互換性について',
          ),
          _buildGuideItem(
            context,
            'SQLite開発ガイド',
            '/development-guide',
            '包括的な開発ガイドライン',
          ),
          _buildGuideItem(
            context,
            'ユニットテスト',
            '/unit-testing',
            'SQLiteを使用したアプリケーションのテスト方法',
          ),
          _buildGuideItem(
            context,
            '外部ドキュメント',
            '/external-docs',
            '外部リソースとチュートリアル',
          ),
          _buildGuideItem(
            context,
            'WindowsとLinuxのサポート',
            '/platform-support',
            'クロスプラットフォーム対応について',
          ),
        ],
      ),
    );
  }

  Widget _buildGuideItem(
    BuildContext context,
    String title,
    String route,
    String description,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        subtitle: Text(description),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          // TODO: 各ページへのナビゲーションを実装
          // Navigator.pushNamed(context, route);
        },
      ),
    );
  }
}
