import 'package:flutter/material.dart';

class AddTodo extends StatefulWidget {
  final void Function(String value) addHandler;

  const AddTodo({Key? key, required this.addHandler}) : super(key: key);

  @override
  _AddTodoState createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final myController = TextEditingController(text: '');

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: TextField(controller: myController),
      ),
      ElevatedButton(
        onPressed: () => widget.addHandler(myController.text),
        child: const Text('Add'),
      ),
    ]);
  }
}
