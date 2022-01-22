import 'package:routineme/models/frequency.dart';
import 'package:routineme/models/priority.dart';

class RoutineModel {
  String name;
  String id;
  Priority priority;
  Frequency frequency;
  DateTime? starttime;
  DateTime? endtime;

  RoutineModel({
    required this.id,
    required this.name,
    required this.priority,
    required this.frequency,
    this.starttime,
    this.endtime,
  });
}
