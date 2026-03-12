import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DownloadDbHelper {
  static Database? _db;
  static const String _table = 'offline_downloads';

  static Future<Database> get _database async {
    _db ??= await openDatabase(
      join(await getDatabasesPath(), 'mqfm_downloads.db'),
      version: 1,
      onCreate: (db, version) => db.execute('''
        CREATE TABLE $_table (
          audio_id INTEGER PRIMARY KEY,
          title TEXT NOT NULL,
          artist TEXT NOT NULL DEFAULT '',
          thumbnail TEXT NOT NULL DEFAULT '',
          dominant_color TEXT NOT NULL DEFAULT '',
          duration INTEGER NOT NULL DEFAULT 0,
          duration_fmt TEXT NOT NULL DEFAULT '',
          file_size INTEGER NOT NULL DEFAULT 0,
          file_path TEXT NOT NULL DEFAULT '',
          local_path TEXT NOT NULL,
          download_id INTEGER NOT NULL DEFAULT 0,
          created_at TEXT NOT NULL DEFAULT ''
        )
      '''),
    );
    return _db!;
  }

  static Future<void> insert({
    required int audioId,
    required String title,
    required String artist,
    required String thumbnail,
    required String dominantColor,
    required int duration,
    required String durationFmt,
    required int fileSize,
    required String filePath,
    required String localPath,
    required int downloadId,
    required String createdAt,
  }) async {
    final db = await _database;
    await db.insert(
      _table,
      {
        'audio_id': audioId,
        'title': title,
        'artist': artist,
        'thumbnail': thumbnail,
        'dominant_color': dominantColor,
        'duration': duration,
        'duration_fmt': durationFmt,
        'file_size': fileSize,
        'file_path': filePath,
        'local_path': localPath,
        'download_id': downloadId,
        'created_at': createdAt,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<Map<String, dynamic>?> getByAudioId(int audioId) async {
    final db = await _database;
    final rows = await db.query(
      _table,
      where: 'audio_id = ?',
      whereArgs: [audioId],
      limit: 1,
    );
    return rows.isNotEmpty ? rows.first : null;
  }

  static Future<List<Map<String, dynamic>>> getAll() async {
    final db = await _database;
    return db.query(_table, orderBy: 'rowid DESC');
  }

  static Future<void> deleteByAudioId(int audioId) async {
    final db = await _database;
    await db.delete(_table, where: 'audio_id = ?', whereArgs: [audioId]);
  }

  static Future<void> deleteByDownloadId(int downloadId) async {
    final db = await _database;
    await db.delete(_table, where: 'download_id = ?', whereArgs: [downloadId]);
  }

  static Future<bool> existsByAudioId(int audioId) async {
    final row = await getByAudioId(audioId);
    return row != null;
  }

  static Future<String?> getLocalPath(int audioId) async {
    final row = await getByAudioId(audioId);
    return row?['local_path'] as String?;
  }
}
