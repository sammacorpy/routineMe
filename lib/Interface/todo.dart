// import 'package:flutter/material.dart';
// import '../models/task.dart';
import 'package:routineme/Interface/priority.dart';

class ITodo {
  String name;
  String id;
  Priority priority;
  bool active;

  ITodo({
    required this.id,
    required this.name,
    required this.priority,
    required this.active,
  });
}




  //   String appBarTitle;
  //  Task task;
  // todo_state todoState;
  // new_task(this.task, this.appBarTitle, this.todoState);
  // bool _isEditingText = false;

  // @override  //Decorator
  //   State<StatefulWidget> createState() {
  //   return task_state(this.task, this.appBarTitle, this.todoState);
  // }
