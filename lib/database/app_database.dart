import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void createDataBase() {
  getDatabasesPath().then((dbpath) {
    final String path = join(dbpath, 'bytebank.db');
    openDatabase(path, onCreate: (db, version) {
      db.execute('CREATE TABLE contacts('
          'id INTEGER PRIMARY KEY, '
          'name TEXT, '
          'account_number INTEGER)');
    }, version: 1);
  });
}
