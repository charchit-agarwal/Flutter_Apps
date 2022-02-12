import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  TasksTile(
      {Key? key,
      required this.task,
      required this.checkBoxState,
      required this.toggleCheckBoxState,
      required this.deleteTask})
      : super(key: key);
  String task;
  bool checkBoxState;
  Function toggleCheckBoxState;
  Function deleteTask;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task,
        style: TextStyle(
            decoration: checkBoxState ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkBoxState,
        onChanged: (newValue) {
          toggleCheckBoxState(newValue);
        },
      ),
      onLongPress: () {
        deleteTask();
      },
    );
  }
}
