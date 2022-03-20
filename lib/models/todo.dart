import 'package:routineme/models/priority.dart';

class Todo {
  final String title;
  final String id;
  Priority priority;
  final bool active;
  bool completed = false;
  DateTime? createdAt;

  Todo({
    required this.id,
    required this.title,
    required this.priority,
    required this.active,
    this.createdAt,
  });

  Todo.fromJson(dynamic data):
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
