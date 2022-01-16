import 'package:flutter/material.dart';
import 'package:../models/task.dart';
 class todo extends StatefulWidget {
    String appBarTitle;
   Task task;
  todo_state todoState;
  new_task(this.task, this.appBarTitle, this.todoState);
  bool _isEditingText = false;

  @override
  State<StatefulWidget> createState() {
    return task_state(this.task, this.appBarTitle, this.todoState);
  }
}
