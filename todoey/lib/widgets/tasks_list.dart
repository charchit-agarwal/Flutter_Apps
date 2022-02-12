import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/task_data.dart';
import 'tasks_tile.dart';

class TasksList extends StatelessWidget {
  TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TasksTile(
            task: taskData.tasksList[index].taskTitle,
            checkBoxState: taskData.tasksList[index].isChecked,
            toggleCheckBoxState: (newValue) {
              taskData.updateTask(taskData.tasksList[index]);
            },
            deleteTask: () {
              taskData.deleteTask(taskData.tasksList[index]);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
