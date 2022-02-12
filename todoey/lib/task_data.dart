import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasksList = [Task(taskTitle: 'eat'), Task(taskTitle: 'sleep')];
  int get taskCount {
    return _tasksList.length;
  }

  UnmodifiableListView get tasksList {
    return UnmodifiableListView(_tasksList);
  }

  void addTask(String taskTitle) {
    _tasksList.add(Task(taskTitle: taskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleIsChecked();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasksList.remove(task);
    notifyListeners();
  }
}
