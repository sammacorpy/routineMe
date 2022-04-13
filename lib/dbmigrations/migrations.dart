import 'package:routineme/dbmigrations/table.dart';
import 'package:routineme/dbmigrations/timer.dart';
import 'package:sqflite/sqlite_api.dart';

class Migrations {
  static Future<void> migrate(Database db, dynamic version) async{
    List<Table> tables = [];
    tables.add(TimerTable());
    for (Table table in tables) {
      table.create(db, version);
    }
  }
}
