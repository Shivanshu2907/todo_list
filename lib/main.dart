import 'package:flutter/material.dart';
import 'package:todo_list/screens/task_Screen.dart';
import 'package:provider/provider.dart';
import 'modules/task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Tasks>(
      create: (context) => Tasks(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

class Tasks extends ChangeNotifier {
  int c = 0;
  List<Task> tasks = [
    Task(taskTitle: 'wakeup'),
    Task(taskTitle: 'make up'),
    Task(taskTitle: 'maybe')
  ];

  void addTask(String t) {
    Task ta = Task(taskTitle: t);
    tasks.add(ta);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggle();
    notifyListeners();
  }

  void undonetasks() {
    c = 0;
    for (Task t in tasks) {
      if (t.isDone == false) {
        c++;
      }
    }
    notifyListeners();
  }

  void delete(int i) {
    tasks.removeAt(i);
    notifyListeners();
  }
}
