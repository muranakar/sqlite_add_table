import 'package:flutter/material.dart';
import 'package:sqlite_add_table/9_unit_testing_page.dart';
import '1_open_database_page.dart';
import '2_open_asset_database_page.dart';
import '3_sql_basics_page.dart';
import '4_delete_database_page.dart';
import '5_build_runtime_issues_page.dart';
import '6_usage_recommendations_page.dart';
import '7_dev_tips_page.dart';
import '8_sqlite_version_page.dart';
import '9_development_guide_page.dart';

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
      routes: {
        '/open-database': (context) => const OpenDatabasePage(),
        '/open-asset-database': (context) => const OpenAssetDatabasePage(),
        '/sql-basics': (context) => const SqlBasicsPage(),
        '/delete-database': (context) => const DeleteDatabasePage(),
        '/build-runtime-issues': (context) => const BuildRuntimeIssuesPage(),
        '/usage-recommendations': (context) => const UsageRecommendationsPage(),
        '/dev-tips': (context) => const DevTipsPage(),
        '/sqlite-version': (context) => const SQLiteVersionPage(),
        '/development-guide': (context) => const DevelopmentGuidePage(),
        '/unit-testing': (context) => const UnitTestingPage(),
      },
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
          Navigator.pushNamed(context, route);
        },
      ),
    );
  }
}
