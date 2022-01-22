// import 'package:flutter/material.dart';
// import '../models/task.dart';
import 'package:routineme/models/priority.dart';

class TodoModel {
  late String name;
  late String id;
  late Priority priority;
  late bool active;

  TodoModel({
    required this.id,
    required this.name,
    required this.priority,
    required this.active,
  });

  TodoModel.fromJson(dynamic data){
    name = data['name'];
    id = data['id'];
    priority = data['priority'];
    active = data['active'];

  }
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
