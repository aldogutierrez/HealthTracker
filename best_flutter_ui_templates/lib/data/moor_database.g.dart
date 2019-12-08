// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
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
    this.uID = const Value.absent(),
    @required int heartRate,
  }) : heartRate = Value(heartRate);
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
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
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
  Set<GeneratedColumn> get $primaryKey => {uID};
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
  final int systolic;
  final int diastolic;
  BloodPressureData({@required this.systolic, @required this.diastolic});
  factory BloodPressureData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return BloodPressureData(
      systolic:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}systolic']),
      diastolic:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}diastolic']),
    );
  }
  factory BloodPressureData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return BloodPressureData(
      systolic: serializer.fromJson<int>(json['systolic']),
      diastolic: serializer.fromJson<int>(json['diastolic']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'systolic': serializer.toJson<int>(systolic),
      'diastolic': serializer.toJson<int>(diastolic),
    };
  }

  @override
  BloodPressureCompanion createCompanion(bool nullToAbsent) {
    return BloodPressureCompanion(
      systolic: systolic == null && nullToAbsent
          ? const Value.absent()
          : Value(systolic),
      diastolic: diastolic == null && nullToAbsent
          ? const Value.absent()
          : Value(diastolic),
    );
  }

  BloodPressureData copyWith({int systolic, int diastolic}) =>
      BloodPressureData(
        systolic: systolic ?? this.systolic,
        diastolic: diastolic ?? this.diastolic,
      );
  @override
  String toString() {
    return (StringBuffer('BloodPressureData(')
          ..write('systolic: $systolic, ')
          ..write('diastolic: $diastolic')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(systolic.hashCode, diastolic.hashCode));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is BloodPressureData &&
          other.systolic == this.systolic &&
          other.diastolic == this.diastolic);
}

class BloodPressureCompanion extends UpdateCompanion<BloodPressureData> {
  final Value<int> systolic;
  final Value<int> diastolic;
  const BloodPressureCompanion({
    this.systolic = const Value.absent(),
    this.diastolic = const Value.absent(),
  });
  BloodPressureCompanion.insert({
    @required int systolic,
    @required int diastolic,
  })  : systolic = Value(systolic),
        diastolic = Value(diastolic);
  BloodPressureCompanion copyWith({Value<int> systolic, Value<int> diastolic}) {
    return BloodPressureCompanion(
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
  List<GeneratedColumn> get $columns => [systolic, diastolic];
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
  final int weight;
  WeightData({@required this.weight});
  factory WeightData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return WeightData(
      weight: intType.mapFromDatabaseResponse(data['${effectivePrefix}weight']),
    );
  }
  factory WeightData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return WeightData(
      weight: serializer.fromJson<int>(json['weight']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'weight': serializer.toJson<int>(weight),
    };
  }

  @override
  WeightCompanion createCompanion(bool nullToAbsent) {
    return WeightCompanion(
      weight:
          weight == null && nullToAbsent ? const Value.absent() : Value(weight),
    );
  }

  WeightData copyWith({int weight}) => WeightData(
        weight: weight ?? this.weight,
      );
  @override
  String toString() {
    return (StringBuffer('WeightData(')..write('weight: $weight')..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf(weight.hashCode);
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is WeightData && other.weight == this.weight);
}

class WeightCompanion extends UpdateCompanion<WeightData> {
  final Value<int> weight;
  const WeightCompanion({
    this.weight = const Value.absent(),
  });
  WeightCompanion.insert({
    @required int weight,
  }) : weight = Value(weight);
  WeightCompanion copyWith({Value<int> weight}) {
    return WeightCompanion(
      weight: weight ?? this.weight,
    );
  }
}

class $WeightTable extends Weight with TableInfo<$WeightTable, WeightData> {
  final GeneratedDatabase _db;
  final String _alias;
  $WeightTable(this._db, [this._alias]);
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
  List<GeneratedColumn> get $columns => [weight];
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
  $HeartRateTable _heartRate;
  $HeartRateTable get heartRate => _heartRate ??= $HeartRateTable(this);
  $BloodPressureTable _bloodPressure;
  $BloodPressureTable get bloodPressure =>
      _bloodPressure ??= $BloodPressureTable(this);
  $WeightTable _weight;
  $WeightTable get weight => _weight ??= $WeightTable(this);
  @override
  List<TableInfo> get allTables => [heartRate, bloodPressure, weight];
}
