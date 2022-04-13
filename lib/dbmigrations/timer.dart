import 'package:routineme/dbmigrations/table.dart';
import 'package:sqflite/sqflite.dart';

class TimerTable extends Table {
  @override
  Future<void> create(Database db, dynamic version) async {
    DBTable(db, TimerTable)
    .addColumn("id", "INTEGER PRIMARY KEY AUTOINCREMENT")
    .addColumn("name", "TEXT NOT NULL")
    .addColumn(createdAt, "")
    
  }

  @override
  void delete() {
    // TODO: implement delete
  }

  @override
  void migrate() {
    // TODO: implement migrate
  }

  @override
  void update() {
    // TODO: implement update
  }
  
}