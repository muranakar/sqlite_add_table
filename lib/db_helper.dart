import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'todo_database.db'),
      onCreate: (db, version) {
        db.execute(
          'CREATE TABLE todos(id INTEGER PRIMARY KEY, title TEXT)',
        );
      },
      onUpgrade: (db, oldVersion, newVersion) {
        if (oldVersion < 2) {
          db.execute(
            'CREATE TABLE comments(id INTEGER PRIMARY KEY, todo_id INTEGER, comment TEXT, FOREIGN KEY (todo_id) REFERENCES todos (id))',
          );
        }
      },
      version: 2,
    );
  }

  Future<List<Map<String, dynamic>>> getTodos() async {
    final db = await database;
    return await db.query('todos');
  }

  Future<void> insertTodo(Map<String, dynamic> todo) async {
    final db = await database;
    await db.insert('todos', todo);
  }
}
