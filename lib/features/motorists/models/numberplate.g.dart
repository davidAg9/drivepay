// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'numberplate.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const NumberPlateSchema = Schema(
  name: r'NumberPlate',
  id: -5006547935657674998,
  properties: {
    r'countryOrigin': PropertySchema(
      id: 0,
      name: r'countryOrigin',
      type: IsarType.string,
    ),
    r'createdDate': PropertySchema(
      id: 1,
      name: r'createdDate',
      type: IsarType.dateTime,
    ),
    r'expiredDate': PropertySchema(
      id: 2,
      name: r'expiredDate',
      type: IsarType.dateTime,
    ),
    r'plateNumber': PropertySchema(
      id: 3,
      name: r'plateNumber',
      type: IsarType.long,
    )
  },
  estimateSize: _numberPlateEstimateSize,
  serialize: _numberPlateSerialize,
  deserialize: _numberPlateDeserialize,
  deserializeProp: _numberPlateDeserializeProp,
);

int _numberPlateEstimateSize(
  NumberPlate object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.countryOrigin;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _numberPlateSerialize(
  NumberPlate object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.countryOrigin);
  writer.writeDateTime(offsets[1], object.createdDate);
  writer.writeDateTime(offsets[2], object.expiredDate);
  writer.writeLong(offsets[3], object.plateNumber);
}

NumberPlate _numberPlateDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NumberPlate(
    countryOrigin: reader.readStringOrNull(offsets[0]),
    createdDate: reader.readDateTimeOrNull(offsets[1]),
    expiredDate: reader.readDateTimeOrNull(offsets[2]),
    plateNumber: reader.readLongOrNull(offsets[3]),
  );
  return object;
}

P _numberPlateDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension NumberPlateQueryFilter
    on QueryBuilder<NumberPlate, NumberPlate, QFilterCondition> {
  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      countryOriginIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'countryOrigin',
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      countryOriginIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'countryOrigin',
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      countryOriginEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countryOrigin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      countryOriginGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'countryOrigin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      countryOriginLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'countryOrigin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      countryOriginBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'countryOrigin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      countryOriginStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'countryOrigin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      countryOriginEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'countryOrigin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      countryOriginContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'countryOrigin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      countryOriginMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'countryOrigin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      countryOriginIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countryOrigin',
        value: '',
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      countryOriginIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'countryOrigin',
        value: '',
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      createdDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdDate',
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      createdDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdDate',
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      createdDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdDate',
        value: value,
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      createdDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdDate',
        value: value,
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      createdDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdDate',
        value: value,
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      createdDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      expiredDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'expiredDate',
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      expiredDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'expiredDate',
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      expiredDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expiredDate',
        value: value,
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      expiredDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expiredDate',
        value: value,
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      expiredDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expiredDate',
        value: value,
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      expiredDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expiredDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      plateNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'plateNumber',
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      plateNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'plateNumber',
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      plateNumberEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'plateNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      plateNumberGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'plateNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      plateNumberLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'plateNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<NumberPlate, NumberPlate, QAfterFilterCondition>
      plateNumberBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'plateNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension NumberPlateQueryObject
    on QueryBuilder<NumberPlate, NumberPlate, QFilterCondition> {}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NumberPlate _$NumberPlateFromJson(Map<String, dynamic> json) => NumberPlate(
      plateNumber: json['plateNumber'] as int?,
      countryOrigin: json['countryOrigin'] as String?,
      expiredDate: json['expiredDate'] == null
          ? null
          : DateTime.parse(json['expiredDate'] as String),
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
    );

Map<String, dynamic> _$NumberPlateToJson(NumberPlate instance) =>
    <String, dynamic>{
      'plateNumber': instance.plateNumber,
      'countryOrigin': instance.countryOrigin,
      'expiredDate': instance.expiredDate?.toIso8601String(),
      'createdDate': instance.createdDate?.toIso8601String(),
    };
