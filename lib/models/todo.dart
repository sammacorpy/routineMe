// import 'package:flutter/material.dart';
// import '../models/task.dart';
import 'package:routineme/models/priority.dart';

class TodoModel {
  final String title;
  final String id;
  Priority priority;
  final bool active;
  bool completed = false;
  DateTime? createdAt;

  TodoModel({
    required this.id,
    required this.title,
    required this.priority,
    required this.active,
    this.createdAt,
  });

  TodoModel.fromJson(dynamic data):
    title = data['title'],
    id = data['id'],
    priority = data['priority'],
    active = data['active'],
    createdAt = data['createdAt'],
    completed = data['completed'];

  void moveToComplete () {
    completed = true;
  }

  void moveToDraft () {
    completed = false;
  }

  void changePriority (Priority p) {
    priority = p;
  }
}
