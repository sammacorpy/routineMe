class TaskStatus {
  final TaskStates taskStatus;
  const TaskStatus({required this.taskStatus}); 
}

enum TaskStates {
  pending,
  running,
  paused,
  stopped,
  completed
}