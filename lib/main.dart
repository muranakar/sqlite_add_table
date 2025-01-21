import 'package:flutter/material.dart';
import 'db_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'TODO List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late DatabaseHelper dbHelper;
  List<Map<String, dynamic>> todos = [];

  @override
  void initState() {
    super.initState();
    dbHelper = DatabaseHelper();
    _loadTodos();
  }

  Future<void> _loadTodos() async {
    final data = await dbHelper.getTodos();
    setState(() {
      todos = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index]['title']),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await dbHelper.insertTodo({'title': 'New TODO'});
          _loadTodos();
        },
        tooltip: 'Add TODO',
        child: const Icon(Icons.add),
      ),
    );
  }
}
