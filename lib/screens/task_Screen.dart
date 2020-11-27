import 'package:flutter/material.dart';
import 'package:todo_list/widgets/task_list.dart';
import 'add_task.dart';
import 'package:todo_list/main.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    Provider.of<Tasks>(context).undonetasks();
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40.0, top: 70.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35.0,
                    child: Icon(
                      Icons.list,
                      size: 55.0,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'To-Do',
                    style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    Provider.of<Tasks>(context).c == 0
                        ? 'All Done....'
                        : '${Provider.of<Tasks>(context).c} Tasks',
                    // '${Provider.of<Tasks>(context).length()}',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TaskList(),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTask(),
                    ),
                  ));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
