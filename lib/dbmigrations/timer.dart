import 'package:routineme/dbmigrations/table.dart';
import 'package:sqflite/sqflite.dart';


class TimerField {
  static String id = "id";
  static String name = "name";
  static String updatedAt = "updatedAt";
  static String millisecond = "milliseconds";
}
class TimerTable extends Table {
  @override
  Future<void> create(Database db, dynamic version) async {
    DBTable(db, TimerTable)
    .addColumn(TimerField.id, "INTEGER PRIMARY KEY AUTOINCREMENT")
    .addColumn(TimerField.name, "TEXT NOT NULL")
    .addColumn(TimerField.updatedAt, "TEXT NOT NULL")
    .addColumn(TimerField.millisecond, "INTEGER NOT NULL")
    .create();
  }

  @override
  Future<void> delete(Database db, dynamic version) async {
    DBTable(db, TimerTable).delete();
  }

  @override
  Future<void> migrate(Database db, dynamic version) async {
    // your code to migrate some data on app startup
  }

  @override
  Future<void> update(Database db, dynamic version) async {
    // implement some update logic here
  }
  
}