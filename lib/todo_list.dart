import 'package:flutter/material.dart';
import './todo_item.dart';
import './add_todo.dart';

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final List<String> _items = ["Item 1", "Item 2", "Item 3", "Item 4"];

  void onDelete(String value) => setState(() => _items.remove(value));

  void onAdd(String value) => setState(() => _items.add(value));

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Column(children: [
        ..._items.map(
          (e) => TodoItem(
            item: e,
            deleteHandler: () => onDelete(e),
          ),
        ),
      ]),
      AddTodo(addHandler: onAdd),
    ]);
  }
}
