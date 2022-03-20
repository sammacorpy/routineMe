import 'package:routineme/models/frequency.dart';
import 'package:routineme/models/priority.dart';

class Routine {
  String name;
  String id;
  Priority priority;
  Frequency frequency;
  DateTime? starttime;
  DateTime? endtime;

  Routine({
    required this.id,
    required this.name,
    required this.priority,
    required this.frequency,
    this.starttime,
    this.endtime,
  });
}
