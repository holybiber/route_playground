import 'package:flutter/material.dart';

final class Todo {
  final String title;
  final String contents;
  const Todo(this.title, this.contents);
}

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final todos = const [
    Todo('Todo 1', 'Content 1'),
    Todo('Todo 2', 'Content 2')
  ];

  Future<void> _pushRoute(int index) async {
    debugPrint('pushing Route... index: $index');
    debugPrint(
        'title: ${todos[index].title} content: ${todos[index].contents}');

    await Navigator.of(context).push(
      // Pushing an anonymous route
      MaterialPageRoute<void>(
        builder: (_) =>
            TodoItem(title: todos[index].title, content: todos[index].contents),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(todos[index].title),
              onTap: () async => _pushRoute(index));
        });
  }
}

class TodoItem extends StatelessWidget {
  final String title;
  final String content;
  const TodoItem({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
//    final todo = ModalRoute.of(context)!.settings.arguments! as Todo;

    return Scaffold(
      body: Text('${this.title} - ${this.content}'),
    );
  }
}

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: TodoList()));
  }
}
