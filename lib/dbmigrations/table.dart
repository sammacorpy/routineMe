import 'package:routineme/dbadapter/databasesetup.dart';
import 'package:sqflite/sqlite_api.dart';

abstract class Table {
  Future<void> migrate(Database db, dynamic version);
  Future<void> delete(Database db, dynamic version);
  Future<void> create(Database db, dynamic version);
  Future<void> update(Database db, dynamic version);
}

class DBTable {
  late Database _db;
  late String _query;
  late List<String> _columns;
  DBTable(Database db, Type name){
    String tableName = name.toString().replaceAll("Table", "");
    _query = "CREATE TABLE $tableName (";
    _columns = [];
    _db = db;
  }

  DBTable addColumn(String name, String type) {
    _columns.add("$name $type");
    return this;
  }

  void save(){
    _db.execute(_query! + _columns.join(", ") + ")");
  }
}
