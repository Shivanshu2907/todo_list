import 'package:flutter/material.dart';

class Task {
  bool isDone;
  String taskTitle;
  Task({this.isDone = false, this.taskTitle});
  void toggle() {
    isDone = !isDone;
  }
}
