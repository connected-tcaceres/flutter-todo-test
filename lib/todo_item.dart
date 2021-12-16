import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final String item;
  final void Function() deleteHandler;

  const TodoItem({required this.item, required this.deleteHandler, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(item),
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.redAccent),
          child: const Text("Delete"),
          onPressed: deleteHandler,
        )
      ],
    );
  }
}
