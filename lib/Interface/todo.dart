import 'package:flutter/material.dart';
import '../models/task.dart';
 class Todo extends StatefulWidget {
    String appBarTitle;
   Task task;
  todo_state todoState;
  new_task(this.task, this.appBarTitle, this.todoState);
  bool _isEditingText = false;

  @override  //Decorator
    State<StatefulWidget> createState() {
    return task_state(this.task, this.appBarTitle, this.todoState);
  }
}
