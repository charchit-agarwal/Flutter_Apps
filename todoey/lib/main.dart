import 'package:flutter/material.dart';
import 'package:todoey/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/task.dart';
import 'package:todoey/task_data.dart';
import 'package:todoey/widgets/tasks_list.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: TasksScreen(),
      ),
    );
  }
} 