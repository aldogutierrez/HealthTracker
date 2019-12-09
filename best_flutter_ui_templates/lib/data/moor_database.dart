import 'package:moor_flutter/moor_flutter.dart';

part 'moor_database.g.dart';

class User extends Table {
  IntColumn get uID => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 50)();
  IntColumn get age => integer()();
}

class HeartRate extends Table {
  IntColumn get uID => integer().customConstraint('REFERENCES User(uID)')();
  IntColumn get heartRate => integer()();
}

class BloodPressure extends Table {
  IntColumn get uID => integer().customConstraint('REFERENCES User(uID)')();
  IntColumn get systolic => integer()();
  IntColumn get diastolic => integer()();
}

class Weight extends Table {
  IntColumn get uID => integer().customConstraint('REFERENCES User(uID)')();
  IntColumn get weight => integer()();
}

@UseMoor(tables: [User, HeartRate, BloodPressure, Weight])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite', logStatements: true));

  @override
  int get schemaVersion => 1;
}