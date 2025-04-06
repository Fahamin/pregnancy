import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('pregnancyww.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE pregnancy_counter (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        date TEXT NOT NULL,
        count INTEGER NOT NULL
      )
    ''');


    await db.execute('''
      CREATE TABLE pregnancy_notes (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        date TEXT NOT NULL UNIQUE,
        title TEXT DEFAULT '',
        content TEXT DEFAULT '',
        mood INTEGER DEFAULT 3,
        created_at TEXT NOT NULL,
        FOREIGN KEY (date) REFERENCES pregnancy_counter (date) ON DELETE CASCADE
      )
    ''');
  }



// Add these methods
  Future<int> insertNote(Map<String, dynamic> note) async {
    final db = await database;
    note['created_at'] = DateTime.now().toIso8601String();
    return await db.insert('pregnancy_notes', note);
  }

  Future<int> updateNote(Map<String, dynamic> note) async {
    final db = await database;
    return await db.update(
      'pregnancy_notes',
      note,
      where: 'date = ?',
      whereArgs: [note['date']],
    );
  }

  Future<Map<String, dynamic>?> getNoteByDate(String date) async {
    final db = await database;
    final result = await db.query(
      'pregnancy_notes',
      where: 'date = ?',
      whereArgs: [date],
    );
    return result.isNotEmpty ? result.first : null;
  }

  Future<List<Map<String, dynamic>>> getAllNotes() async {
    final db = await database;
    return await db.query('pregnancy_notes');
  }

  Future<int> insertCounter(String date, int count) async {
    final db = await instance.database;
    return await db.insert('pregnancy_counter', {'date': date, 'count': count});
  }

  Future<List<Map<String, dynamic>>> getAllCounters() async {
    final db = await instance.database;
    return await db.query('pregnancy_counter');
  }

  Future<int> updateCounter(String date, int count) async {
    final db = await instance.database;
    return await db.update(
      'pregnancy_counter',
      {'count': count},
      where: 'date = ?',
      whereArgs: [date],
    );
  }

  Future<int> deleteCounter(String date) async {
    final db = await instance.database;
    return await db.delete(
      'pregnancy_counter',
      where: 'date = ?',
      whereArgs: [date],
    );
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}