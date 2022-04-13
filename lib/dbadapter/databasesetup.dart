import 'package:path/path.dart' as Path;
import 'package:routineme/dbmigrations/migrations.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class RoutineDatabase {
  Database? _db;
  static final RoutineDatabase _instance = RoutineDatabase._init();
  RoutineDatabase._init();

  static RoutineDatabase getDB() {
    return _instance;
  }

  Future<Database> get database async {
    if (_db != null) {
      return _db!;
     } else{
       return await _inititializeDB("routineme.db");
     }
  }

  Future<Database> _inititializeDB(String filePath) async{
    final String dbPath = await getDatabasesPath();
    final String path = Path.join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future<void> _createDB(Database db, dynamic version) async {
    await Migrations.migrate(db, version);
  }

}