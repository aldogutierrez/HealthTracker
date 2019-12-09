// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class UserData extends DataClass implements Insertable<UserData> {
  final int uID;
  final String name;
  final int age;
  UserData({@required this.uID, @required this.name, @required this.age});
  factory UserData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return UserData(
      uID: intType.mapFromDatabaseResponse(data['${effectivePrefix}u_i_d']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      age: intType.mapFromDatabaseResponse(data['${effectivePrefix}age']),
    );
  }
  factory UserData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return UserData(
      uID: serializer.fromJson<int>(json['uID']),
      name: serializer.fromJson<String>(json['name']),
      age: serializer.fromJson<int>(json['age']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'uID': serializer.toJson<int>(uID),
      'name': serializer.toJson<String>(name),
      'age': serializer.toJson<int>(age),
    };
  }

  @override
  UserCompanion createCompanion(bool nullToAbsent) {
    return UserCompanion(
      uID: uID == null && nullToAbsent ? const Value.absent() : Value(uID),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      age: age == null && nullToAbsent ? const Value.absent() : Value(age),
    );
  }

  UserData copyWith({int uID, String name, int age}) => UserData(
        uID: uID ?? this.uID,
        name: name ?? this.name,
        age: age ?? this.age,
      );
  @override
  String toString() {
    return (StringBuffer('UserData(')
          ..write('uID: $uID, ')
          ..write('name: $name, ')
          ..write('age: $age')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(uID.hashCode, $mrjc(name.hashCode, age.hashCode)));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is UserData &&
          other.uID == this.uID &&
          other.name == this.name &&
          other.age == this.age);
}

class UserCompanion extends UpdateCompanion<UserData> {
  final Value<int> uID;
  final Value<String> name;
  final Value<int> age;
  const UserCompanion({
    this.uID = const Value.absent(),
    this.name = const Value.absent(),
    this.age = const Value.absent(),
  });
  UserCompanion.insert({
    this.uID = const Value.absent(),
    @required String name,
    @required int age,
  })  : name = Value(name),
        age = Value(age);
  UserCompanion copyWith({Value<int> uID, Value<String> name, Value<int> age}) {
    return UserCompanion(
      uID: uID ?? this.uID,
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }
}

class $UserTable extends User with TableInfo<$UserTable, UserData> {
  final GeneratedDatabase _db;
  final String _alias;
  $UserTable(this._db, [this._alias]);
  final VerificationMeta _uIDMeta = const VerificationMeta('uID');
  GeneratedIntColumn _uID;
  @override
  GeneratedIntColumn get uID => _uID ??= _constructUID();
  GeneratedIntColumn _constructUID() {
    return GeneratedIntColumn('u_i_d', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _ageMeta = const VerificationMeta('age');
  GeneratedIntColumn _age;
  @override
  GeneratedIntColumn get age => _age ??= _constructAge();
  GeneratedIntColumn _constructAge() {
    return GeneratedIntColumn(
      'age',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [uID, name, age];
  @override
  $UserTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'user';
  @override
  final String actualTableName = 'user';
  @override
  VerificationContext validateIntegrity(UserCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.uID.present) {
      context.handle(_uIDMeta, uID.isAcceptableValue(d.uID.value, _uIDMeta));
    } else if (uID.isRequired && isInserting) {
      context.missing(_uIDMeta);
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (name.isRequired && isInserting) {
      context.missing(_nameMeta);
    }
    if (d.age.present) {
      context.handle(_ageMeta, age.isAcceptableValue(d.age.value, _ageMeta));
    } else if (age.isRequired && isInserting) {
      context.missing(_ageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uID};
  @override
  UserData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UserData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(UserCompanion d) {
    final map = <String, Variable>{};
    if (d.uID.present) {
      map['u_i_d'] = Variable<int, IntType>(d.uID.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.age.present) {
      map['age'] = Variable<int, IntType>(d.age.value);
    }
    return map;
  }

  @override
  $UserTable createAlias(String alias) {
    return $UserTable(_db, alias);
  }
}

class HeartRateData extends DataClass implements Insertable<HeartRateData> {
  final int uID;
  final int heartRate;
  HeartRateData({@required this.uID, @required this.heartRate});
  factory HeartRateData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return HeartRateData(
      uID: intType.mapFromDatabaseResponse(data['${effectivePrefix}u_i_d']),
      heartRate:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}heart_rate']),
    );
  }
  factory HeartRateData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return HeartRateData(
      uID: serializer.fromJson<int>(json['uID']),
      heartRate: serializer.fromJson<int>(json['heartRate']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'uID': serializer.toJson<int>(uID),
      'heartRate': serializer.toJson<int>(heartRate),
    };
  }

  @override
  HeartRateCompanion createCompanion(bool nullToAbsent) {
    return HeartRateCompanion(
      uID: uID == null && nullToAbsent ? const Value.absent() : Value(uID),
      heartRate: heartRate == null && nullToAbsent
          ? const Value.absent()
          : Value(heartRate),
    );
  }

  HeartRateData copyWith({int uID, int heartRate}) => HeartRateData(
        uID: uID ?? this.uID,
        heartRate: heartRate ?? this.heartRate,
      );
  @override
  String toString() {
    return (StringBuffer('HeartRateData(')
          ..write('uID: $uID, ')
          ..write('heartRate: $heartRate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(uID.hashCode, heartRate.hashCode));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is HeartRateData &&
          other.uID == this.uID &&
          other.heartRate == this.heartRate);
}

class HeartRateCompanion extends UpdateCompanion<HeartRateData> {
  final Value<int> uID;
  final Value<int> heartRate;
  const HeartRateCompanion({
    this.uID = const Value.absent(),
    this.heartRate = const Value.absent(),
  });
  HeartRateCompanion.insert({
    @required int uID,
    @required int heartRate,
  })  : uID = Value(uID),
        heartRate = Value(heartRate);
  HeartRateCompanion copyWith({Value<int> uID, Value<int> heartRate}) {
    return HeartRateCompanion(
      uID: uID ?? this.uID,
      heartRate: heartRate ?? this.heartRate,
    );
  }
}

class $HeartRateTable extends HeartRate
    with TableInfo<$HeartRateTable, HeartRateData> {
  final GeneratedDatabase _db;
  final String _alias;
  $HeartRateTable(this._db, [this._alias]);
  final VerificationMeta _uIDMeta = const VerificationMeta('uID');
  GeneratedIntColumn _uID;
  @override
  GeneratedIntColumn get uID => _uID ??= _constructUID();
  GeneratedIntColumn _constructUID() {
    return GeneratedIntColumn('u_i_d', $tableName, false,
        $customConstraints: 'REFERENCES User(uID)');
  }

  final VerificationMeta _heartRateMeta = const VerificationMeta('heartRate');
  GeneratedIntColumn _heartRate;
  @override
  GeneratedIntColumn get heartRate => _heartRate ??= _constructHeartRate();
  GeneratedIntColumn _constructHeartRate() {
    return GeneratedIntColumn(
      'heart_rate',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [uID, heartRate];
  @override
  $HeartRateTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'heart_rate';
  @override
  final String actualTableName = 'heart_rate';
  @override
  VerificationContext validateIntegrity(HeartRateCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.uID.present) {
      context.handle(_uIDMeta, uID.isAcceptableValue(d.uID.value, _uIDMeta));
    } else if (uID.isRequired && isInserting) {
      context.missing(_uIDMeta);
    }
    if (d.heartRate.present) {
      context.handle(_heartRateMeta,
          heartRate.isAcceptableValue(d.heartRate.value, _heartRateMeta));
    } else if (heartRate.isRequired && isInserting) {
      context.missing(_heartRateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  HeartRateData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return HeartRateData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(HeartRateCompanion d) {
    final map = <String, Variable>{};
    if (d.uID.present) {
      map['u_i_d'] = Variable<int, IntType>(d.uID.value);
    }
    if (d.heartRate.present) {
      map['heart_rate'] = Variable<int, IntType>(d.heartRate.value);
    }
    return map;
  }

  @override
  $HeartRateTable createAlias(String alias) {
    return $HeartRateTable(_db, alias);
  }
}

class BloodPressureData extends DataClass
    implements Insertable<BloodPressureData> {
  final int uID;
  final int systolic;
  final int diastolic;
  BloodPressureData(
      {@required this.uID, @required this.systolic, @required this.diastolic});
  factory BloodPressureData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return BloodPressureData(
      uID: intType.mapFromDatabaseResponse(data['${effectivePrefix}u_i_d']),
      systolic:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}systolic']),
      diastolic:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}diastolic']),
    );
  }
  factory BloodPressureData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return BloodPressureData(
      uID: serializer.fromJson<int>(json['uID']),
      systolic: serializer.fromJson<int>(json['systolic']),
      diastolic: serializer.fromJson<int>(json['diastolic']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'uID': serializer.toJson<int>(uID),
      'systolic': serializer.toJson<int>(systolic),
      'diastolic': serializer.toJson<int>(diastolic),
    };
  }

  @override
  BloodPressureCompanion createCompanion(bool nullToAbsent) {
    return BloodPressureCompanion(
      uID: uID == null && nullToAbsent ? const Value.absent() : Value(uID),
      systolic: systolic == null && nullToAbsent
          ? const Value.absent()
          : Value(systolic),
      diastolic: diastolic == null && nullToAbsent
          ? const Value.absent()
          : Value(diastolic),
    );
  }

  BloodPressureData copyWith({int uID, int systolic, int diastolic}) =>
      BloodPressureData(
        uID: uID ?? this.uID,
        systolic: systolic ?? this.systolic,
        diastolic: diastolic ?? this.diastolic,
      );
  @override
  String toString() {
    return (StringBuffer('BloodPressureData(')
          ..write('uID: $uID, ')
          ..write('systolic: $systolic, ')
          ..write('diastolic: $diastolic')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(uID.hashCode, $mrjc(systolic.hashCode, diastolic.hashCode)));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is BloodPressureData &&
          other.uID == this.uID &&
          other.systolic == this.systolic &&
          other.diastolic == this.diastolic);
}

class BloodPressureCompanion extends UpdateCompanion<BloodPressureData> {
  final Value<int> uID;
  final Value<int> systolic;
  final Value<int> diastolic;
  const BloodPressureCompanion({
    this.uID = const Value.absent(),
    this.systolic = const Value.absent(),
    this.diastolic = const Value.absent(),
  });
  BloodPressureCompanion.insert({
    @required int uID,
    @required int systolic,
    @required int diastolic,
  })  : uID = Value(uID),
        systolic = Value(systolic),
        diastolic = Value(diastolic);
  BloodPressureCompanion copyWith(
      {Value<int> uID, Value<int> systolic, Value<int> diastolic}) {
    return BloodPressureCompanion(
      uID: uID ?? this.uID,
      systolic: systolic ?? this.systolic,
      diastolic: diastolic ?? this.diastolic,
    );
  }
}

class $BloodPressureTable extends BloodPressure
    with TableInfo<$BloodPressureTable, BloodPressureData> {
  final GeneratedDatabase _db;
  final String _alias;
  $BloodPressureTable(this._db, [this._alias]);
  final VerificationMeta _uIDMeta = const VerificationMeta('uID');
  GeneratedIntColumn _uID;
  @override
  GeneratedIntColumn get uID => _uID ??= _constructUID();
  GeneratedIntColumn _constructUID() {
    return GeneratedIntColumn('u_i_d', $tableName, false,
        $customConstraints: 'REFERENCES User(uID)');
  }

  final VerificationMeta _systolicMeta = const VerificationMeta('systolic');
  GeneratedIntColumn _systolic;
  @override
  GeneratedIntColumn get systolic => _systolic ??= _constructSystolic();
  GeneratedIntColumn _constructSystolic() {
    return GeneratedIntColumn(
      'systolic',
      $tableName,
      false,
    );
  }

  final VerificationMeta _diastolicMeta = const VerificationMeta('diastolic');
  GeneratedIntColumn _diastolic;
  @override
  GeneratedIntColumn get diastolic => _diastolic ??= _constructDiastolic();
  GeneratedIntColumn _constructDiastolic() {
    return GeneratedIntColumn(
      'diastolic',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [uID, systolic, diastolic];
  @override
  $BloodPressureTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'blood_pressure';
  @override
  final String actualTableName = 'blood_pressure';
  @override
  VerificationContext validateIntegrity(BloodPressureCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.uID.present) {
      context.handle(_uIDMeta, uID.isAcceptableValue(d.uID.value, _uIDMeta));
    } else if (uID.isRequired && isInserting) {
      context.missing(_uIDMeta);
    }
    if (d.systolic.present) {
      context.handle(_systolicMeta,
          systolic.isAcceptableValue(d.systolic.value, _systolicMeta));
    } else if (systolic.isRequired && isInserting) {
      context.missing(_systolicMeta);
    }
    if (d.diastolic.present) {
      context.handle(_diastolicMeta,
          diastolic.isAcceptableValue(d.diastolic.value, _diastolicMeta));
    } else if (diastolic.isRequired && isInserting) {
      context.missing(_diastolicMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  BloodPressureData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return BloodPressureData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(BloodPressureCompanion d) {
    final map = <String, Variable>{};
    if (d.uID.present) {
      map['u_i_d'] = Variable<int, IntType>(d.uID.value);
    }
    if (d.systolic.present) {
      map['systolic'] = Variable<int, IntType>(d.systolic.value);
    }
    if (d.diastolic.present) {
      map['diastolic'] = Variable<int, IntType>(d.diastolic.value);
    }
    return map;
  }

  @override
  $BloodPressureTable createAlias(String alias) {
    return $BloodPressureTable(_db, alias);
  }
}

class WeightData extends DataClass implements Insertable<WeightData> {
  final int uID;
  final int weight;
  WeightData({@required this.uID, @required this.weight});
  factory WeightData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return WeightData(
      uID: intType.mapFromDatabaseResponse(data['${effectivePrefix}u_i_d']),
      weight: intType.mapFromDatabaseResponse(data['${effectivePrefix}weight']),
    );
  }
  factory WeightData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return WeightData(
      uID: serializer.fromJson<int>(json['uID']),
      weight: serializer.fromJson<int>(json['weight']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'uID': serializer.toJson<int>(uID),
      'weight': serializer.toJson<int>(weight),
    };
  }

  @override
  WeightCompanion createCompanion(bool nullToAbsent) {
    return WeightCompanion(
      uID: uID == null && nullToAbsent ? const Value.absent() : Value(uID),
      weight:
          weight == null && nullToAbsent ? const Value.absent() : Value(weight),
    );
  }

  WeightData copyWith({int uID, int weight}) => WeightData(
        uID: uID ?? this.uID,
        weight: weight ?? this.weight,
      );
  @override
  String toString() {
    return (StringBuffer('WeightData(')
          ..write('uID: $uID, ')
          ..write('weight: $weight')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(uID.hashCode, weight.hashCode));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is WeightData &&
          other.uID == this.uID &&
          other.weight == this.weight);
}

class WeightCompanion extends UpdateCompanion<WeightData> {
  final Value<int> uID;
  final Value<int> weight;
  const WeightCompanion({
    this.uID = const Value.absent(),
    this.weight = const Value.absent(),
  });
  WeightCompanion.insert({
    @required int uID,
    @required int weight,
  })  : uID = Value(uID),
        weight = Value(weight);
  WeightCompanion copyWith({Value<int> uID, Value<int> weight}) {
    return WeightCompanion(
      uID: uID ?? this.uID,
      weight: weight ?? this.weight,
    );
  }
}

class $WeightTable extends Weight with TableInfo<$WeightTable, WeightData> {
  final GeneratedDatabase _db;
  final String _alias;
  $WeightTable(this._db, [this._alias]);
  final VerificationMeta _uIDMeta = const VerificationMeta('uID');
  GeneratedIntColumn _uID;
  @override
  GeneratedIntColumn get uID => _uID ??= _constructUID();
  GeneratedIntColumn _constructUID() {
    return GeneratedIntColumn('u_i_d', $tableName, false,
        $customConstraints: 'REFERENCES User(uID)');
  }

  final VerificationMeta _weightMeta = const VerificationMeta('weight');
  GeneratedIntColumn _weight;
  @override
  GeneratedIntColumn get weight => _weight ??= _constructWeight();
  GeneratedIntColumn _constructWeight() {
    return GeneratedIntColumn(
      'weight',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [uID, weight];
  @override
  $WeightTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'weight';
  @override
  final String actualTableName = 'weight';
  @override
  VerificationContext validateIntegrity(WeightCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.uID.present) {
      context.handle(_uIDMeta, uID.isAcceptableValue(d.uID.value, _uIDMeta));
    } else if (uID.isRequired && isInserting) {
      context.missing(_uIDMeta);
    }
    if (d.weight.present) {
      context.handle(
          _weightMeta, weight.isAcceptableValue(d.weight.value, _weightMeta));
    } else if (weight.isRequired && isInserting) {
      context.missing(_weightMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  WeightData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return WeightData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(WeightCompanion d) {
    final map = <String, Variable>{};
    if (d.uID.present) {
      map['u_i_d'] = Variable<int, IntType>(d.uID.value);
    }
    if (d.weight.present) {
      map['weight'] = Variable<int, IntType>(d.weight.value);
    }
    return map;
  }

  @override
  $WeightTable createAlias(String alias) {
    return $WeightTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $UserTable _user;
  $UserTable get user => _user ??= $UserTable(this);
  $HeartRateTable _heartRate;
  $HeartRateTable get heartRate => _heartRate ??= $HeartRateTable(this);
  $BloodPressureTable _bloodPressure;
  $BloodPressureTable get bloodPressure =>
      _bloodPressure ??= $BloodPressureTable(this);
  $WeightTable _weight;
  $WeightTable get weight => _weight ??= $WeightTable(this);
  @override
  List<TableInfo> get allTables => [user, heartRate, bloodPressure, weight];
}
