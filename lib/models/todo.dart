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

  Todo.fromJson(Map<String, Object?> data):
    title = data['title'] as String,
    id = data['id'] as String,
    priority = data['priority'] as Priority,
    active = data['active'] as bool,
    createdAt = DateTime.parse(data['createdAt'] as String),
    completed = data['completed'] as bool;

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
