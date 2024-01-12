import 'package:flutter/material.dart';
import 'todo_item.dart';

class ToDo extends StatelessWidget {
  final ToDoItem todo;
  final onToDoChanged;
  final onDeleteItem;

  const ToDo({
    Key? key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
          onTap: () {
            onToDoChanged(todo);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          tileColor: Colors.white,
          contentPadding: const EdgeInsets.all(10.0),
          leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: Colors.blue,
          ),
          title: Text(
            todo.todoText!,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              decoration: todo.isDone ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: IconButton(
            onPressed: () {
              onDeleteItem(todo.id);
            },
            icon: const Icon(
              Icons.delete,
              size: 30,
              color: Colors.red,
            ),
          )),
    );
  }
}
