import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/main.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Tasks>(
      builder: (context, value, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                value.tasks[index].taskTitle,
                style: TextStyle(
                    decoration: value.tasks[index].isDone
                        ? TextDecoration.lineThrough
                        : null),
              ),
              trailing: Checkbox(
                activeColor: Colors.lightBlueAccent,
                value: value.tasks[index].isDone,
                onChanged: (checkboxState) {
                  Provider.of<Tasks>(context, listen: false)
                      .updateTask(value.tasks[index]);
                  Provider.of<Tasks>(context, listen: false).undonetasks();
                },
              ),
              onLongPress: () {
                Provider.of<Tasks>(context, listen: false).delete(index);
              },
            );
          },
          itemCount: value.tasks.length,
        );
      },
    );
  }
}
