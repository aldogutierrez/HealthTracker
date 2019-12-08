import 'package:moor_flutter/moor_flutter.dart';

part 'moor_database.g.dart';

class HeartRate extends Table {
  IntColumn get uID => integer().autoIncrement()();
  IntColumn get heartRate => integer()();

}

class BloodPressure extends Table {
  // IntColumn get uID 
  IntColumn get systolic => integer()();
  IntColumn get diastolic => integer()();
}

class Weight extends Table {
  IntColumn get weight => integer()();
}

@UseMoor(tables: [HeartRate, BloodPressure, Weight])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite', logStatements: true));

  @override
  int get schemaVersion => 1;
}