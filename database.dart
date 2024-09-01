import 'dart:io';
import 'package:path/path.dart';

class Database {
  static const dbName = "myDatabase.db";
  static const dbVersion = 1;
  static const sbTable = "myTable";
  static const columnName = "name";

  //Constructor
  static final Database instance = Database();

  //database initialize

  late Database _database;

  static Database database;

  Future<Database> get database async{
    if (_database != null) return _database;
    _database = await initDB();
    return _database;
  }

  initDB() async{
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, dbName);
    return await openDatabase(path,version: dbVersion,onCreate: onCreate)
  }

  Future onCreate(Database db, int version) async {
    db.execute(
      '''
      CREATE TABLE $dbTable (
        $columnId INTEGER PRIMARY KEY,
        $columnName TEXT NOT NULL
      )
      ''');
  }

  insert(Map<String>, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(dbTable, row);
  }

  Future<List<Map<String, dynamic>>> queryDatabase() async {
    Database db = await instance.database;
    return await db.query(dbTable);

    //update method

  Future<int> updateRecord(Map<String, dynamic> row)  async {
    Database db = await instance.database;
    int id = row[columnId];
    return await db.update(dbTable, row,where: '$columnId= ?', whereArgs: [id]);
  }

  //delete method

  Future<int> deleteRecord(int id) async {
    Database db = await instance.database;
    return await db.delete(dbTable, where: '$columnId = ?', whereArgs: [id]);
  }
  }

}