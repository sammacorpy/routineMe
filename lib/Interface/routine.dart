import 'package:routineme/Interface/frequency.dart';
import 'package:routineme/Interface/priority.dart';

class IRoutine {
  String name;
  String id;
  Priority priority;
  Frequency frequency;
  DateTime? starttime;
  DateTime? endtime;

  IRoutine({
    required this.id,
    required this.name,
    required this.priority,
    required this.frequency,
    this.starttime,
    this.endtime,
  });
}
