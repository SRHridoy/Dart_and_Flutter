import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

// Singleton pattern: Ensures there's only one instance of DatabaseHelper
class DatabaseService {
  static final String tableName = 'birthdays';
  static final String nameColumn = 'name';
  static final String dateColumn = 'date';
  // Singleton instance
  static final DatabaseService _instance = DatabaseService._internal();

  // Factory constructor to return the same instance
  factory DatabaseService() => _instance;

  // Private constructor for internal use only
  DatabaseService._internal();

  //Holds the database instance
  Database? _database;

  // Getter to access the database. If not initialized, it will initialize it.
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  // Function to initialize the database
  Future<Database> _initDatabase() async {
    // Get a location using getDatabasesPath
    var databasePath = await getDatabasesPath();
    String dbPath = join(databasePath, 'birthdays.db');
    return await openDatabase(
      // Path where the database will be stored
      dbPath,
      // Database version (useful for migrations)
      version: 1,

      onCreate: (db, version) {
        // This function runs only when the database is created for the first time
        return db.execute(
          '''
          CREATE TABLE $tableName(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            $nameColumn TEXT,
            $dateColumn TEXT
          );
          '''
        );
      },
    );
  }


  // Function to insert a birthday into the database
  Future<void>insertBirthday(String name, String date) async{
    final db = await database;
    await db.insert(tableName, {
      nameColumn:name,dateColumn:date
    });
  }

  // Function to fetch all saved birthdays from the database
  Future<List<Map<String,dynamic>>>fetchBirthdays()async{
    final db = await database;
    return await db.query(tableName);
  }

  //Delete:
  Future<void> deleteBirthday(int id) async{
    final db = await database;
    await db.delete(
      tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }



}
