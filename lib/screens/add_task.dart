import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/main.dart';

class AddTask extends StatelessWidget {
  String task;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff757575),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
          child: Column(
            children: [
              Text(
                'Add Task',
                style: TextStyle(
                  fontSize: 37,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                decoration: InputDecoration(),
                onChanged: (value) {
                  task = value;
                },
              ),
              SizedBox(
                height: 30,
              ),
              FlatButton(
                color: Colors.lightBlueAccent,
                minWidth: double.infinity,
                height: 50.0,
                onPressed: () {
                  if (task.isNotEmpty) {
                    Provider.of<Tasks>(context, listen: false).addTask(task);
                    Provider.of<Tasks>(context, listen: false).undonetasks();
                    Navigator.pop(context);
                  }
                },
                child: Text(
                  'Add',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
