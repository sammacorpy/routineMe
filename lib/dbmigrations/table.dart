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
  late String _tableName;
  late List<String> _columns;
  DBTable(Database db, Type name){
    _tableName = name.toString().replaceAll("Table", "");
    _columns = [];
    _db = db;
  }

  DBTable addColumn(String name, String type) {
    _columns.add("$name $type");
    return this;
  }

  void create() {
    _db.execute("CREATE TABLE $_tableName (" + _columns.join(", ") + ")");
  }

  void delete() {
    _db.execute("DROP TABLE $_tableName");
  }
  
}
