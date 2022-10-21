// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetCarCollection on Isar {
  IsarCollection<Car> get cars => this.collection();
}

const CarSchema = CollectionSchema(
  name: r'Car',
  id: -8398112620925430914,
  properties: {
    r'amountToPay': PropertySchema(
      id: 0,
      name: r'amountToPay',
      type: IsarType.double,
    ),
    r'brandName': PropertySchema(
      id: 1,
      name: r'brandName',
      type: IsarType.string,
    ),
    r'carType': PropertySchema(
      id: 2,
      name: r'carType',
      type: IsarType.string,
      enumMap: _CarcarTypeEnumValueMap,
    ),
    r'modelName': PropertySchema(
      id: 3,
      name: r'modelName',
      type: IsarType.string,
    ),
    r'numberplate': PropertySchema(
      id: 4,
      name: r'numberplate',
      type: IsarType.object,
      target: r'NumberPlate',
    )
  },
  estimateSize: _carEstimateSize,
  serialize: _carSerialize,
  deserialize: _carDeserialize,
  deserializeProp: _carDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'motorist': LinkSchema(
      id: -7270404506731482142,
      name: r'motorist',
      target: r'Motorist',
      single: true,
    )
  },
  embeddedSchemas: {r'NumberPlate': NumberPlateSchema},
  getId: _carGetId,
  getLinks: _carGetLinks,
  attach: _carAttach,
  version: '3.0.2',
);

int _carEstimateSize(
  Car object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.brandName.length * 3;
  bytesCount += 3 + object.carType.name.length * 3;
  bytesCount += 3 + object.modelName.length * 3;
  {
    final value = object.numberplate;
    if (value != null) {
      bytesCount += 3 +
          NumberPlateSchema.estimateSize(
              value, allOffsets[NumberPlate]!, allOffsets);
    }
  }
  return bytesCount;
}

void _carSerialize(
  Car object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.amountToPay);
  writer.writeString(offsets[1], object.brandName);
  writer.writeString(offsets[2], object.carType.name);
  writer.writeString(offsets[3], object.modelName);
  writer.writeObject<NumberPlate>(
    offsets[4],
    allOffsets,
    NumberPlateSchema.serialize,
    object.numberplate,
  );
}

Car _carDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Car(
    amountToPay: reader.readDoubleOrNull(offsets[0]),
    brandName: reader.readString(offsets[1]),
    carType: _CarcarTypeValueEnumMap[reader.readStringOrNull(offsets[2])] ??
        CarType.truck,
    id: id,
    modelName: reader.readString(offsets[3]),
    numberplate: reader.readObjectOrNull<NumberPlate>(
      offsets[4],
      NumberPlateSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _carDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (_CarcarTypeValueEnumMap[reader.readStringOrNull(offset)] ??
          CarType.truck) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readObjectOrNull<NumberPlate>(
        offset,
        NumberPlateSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _CarcarTypeEnumValueMap = {
  r'truck': r'truck',
  r'hatchback': r'hatchback',
  r'suv': r'suv',
  r'crossover': r'crossover',
  r'fourbyfour': r'fourbyfour',
  r'pickup': r'pickup',
  r'van': r'van',
  r'sport': r'sport',
  r'micro': r'micro',
  r'bus': r'bus',
  r'sedan': r'sedan',
  r'bike': r'bike',
};
const _CarcarTypeValueEnumMap = {
  r'truck': CarType.truck,
  r'hatchback': CarType.hatchback,
  r'suv': CarType.suv,
  r'crossover': CarType.crossover,
  r'fourbyfour': CarType.fourbyfour,
  r'pickup': CarType.pickup,
  r'van': CarType.van,
  r'sport': CarType.sport,
  r'micro': CarType.micro,
  r'bus': CarType.bus,
  r'sedan': CarType.sedan,
  r'bike': CarType.bike,
};

Id _carGetId(Car object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _carGetLinks(Car object) {
  return [object.motorist];
}

void _carAttach(IsarCollection<dynamic> col, Id id, Car object) {
  object.motorist.attach(col, col.isar.collection<Motorist>(), r'motorist', id);
}

extension CarQueryWhereSort on QueryBuilder<Car, Car, QWhere> {
  QueryBuilder<Car, Car, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CarQueryWhere on QueryBuilder<Car, Car, QWhereClause> {
  QueryBuilder<Car, Car, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Car, Car, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Car, Car, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Car, Car, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CarQueryFilter on QueryBuilder<Car, Car, QFilterCondition> {
  QueryBuilder<Car, Car, QAfterFilterCondition> amountToPayIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'amountToPay',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> amountToPayIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'amountToPay',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> amountToPayEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'amountToPay',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> amountToPayGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'amountToPay',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> amountToPayLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'amountToPay',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> amountToPayBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'amountToPay',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> brandNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brandName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> brandNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'brandName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> brandNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'brandName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> brandNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'brandName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> brandNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'brandName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> brandNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'brandName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> brandNameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'brandName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> brandNameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'brandName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> brandNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brandName',
        value: '',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> brandNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'brandName',
        value: '',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carTypeEqualTo(
    CarType value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carTypeGreaterThan(
    CarType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carTypeLessThan(
    CarType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carTypeBetween(
    CarType lower,
    CarType upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'carType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'carType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carTypeContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'carType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carTypeMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'carType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carType',
        value: '',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'carType',
        value: '',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> modelNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modelName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> modelNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'modelName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> modelNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'modelName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> modelNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'modelName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> modelNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'modelName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> modelNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'modelName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> modelNameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'modelName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> modelNameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'modelName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> modelNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modelName',
        value: '',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> modelNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'modelName',
        value: '',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> numberplateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'numberplate',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> numberplateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'numberplate',
      ));
    });
  }
}

extension CarQueryObject on QueryBuilder<Car, Car, QFilterCondition> {
  QueryBuilder<Car, Car, QAfterFilterCondition> numberplate(
      FilterQuery<NumberPlate> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'numberplate');
    });
  }
}

extension CarQueryLinks on QueryBuilder<Car, Car, QFilterCondition> {
  QueryBuilder<Car, Car, QAfterFilterCondition> motorist(
      FilterQuery<Motorist> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'motorist');
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> motoristIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'motorist', 0, true, 0, true);
    });
  }
}

extension CarQuerySortBy on QueryBuilder<Car, Car, QSortBy> {
  QueryBuilder<Car, Car, QAfterSortBy> sortByAmountToPay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amountToPay', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByAmountToPayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amountToPay', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByBrandName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brandName', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByBrandNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brandName', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carType', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carType', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByModelName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modelName', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByModelNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modelName', Sort.desc);
    });
  }
}

extension CarQuerySortThenBy on QueryBuilder<Car, Car, QSortThenBy> {
  QueryBuilder<Car, Car, QAfterSortBy> thenByAmountToPay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amountToPay', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByAmountToPayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amountToPay', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByBrandName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brandName', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByBrandNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brandName', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carType', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carType', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByModelName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modelName', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByModelNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modelName', Sort.desc);
    });
  }
}

extension CarQueryWhereDistinct on QueryBuilder<Car, Car, QDistinct> {
  QueryBuilder<Car, Car, QDistinct> distinctByAmountToPay() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'amountToPay');
    });
  }

  QueryBuilder<Car, Car, QDistinct> distinctByBrandName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'brandName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Car, Car, QDistinct> distinctByModelName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'modelName', caseSensitive: caseSensitive);
    });
  }
}

extension CarQueryProperty on QueryBuilder<Car, Car, QQueryProperty> {
  QueryBuilder<Car, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Car, double?, QQueryOperations> amountToPayProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'amountToPay');
    });
  }

  QueryBuilder<Car, String, QQueryOperations> brandNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'brandName');
    });
  }

  QueryBuilder<Car, CarType, QQueryOperations> carTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carType');
    });
  }

  QueryBuilder<Car, String, QQueryOperations> modelNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'modelName');
    });
  }

  QueryBuilder<Car, NumberPlate?, QQueryOperations> numberplateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numberplate');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Car _$CarFromJson(Map<String, dynamic> json) => Car(
      id: json['id'] as int?,
      brandName: json['brandName'] as String,
      modelName: json['modelName'] as String,
      carType: $enumDecode(_$CarTypeEnumMap, json['carType']),
      numberplate: json['numberplate'] == null
          ? null
          : NumberPlate.fromJson(json['numberplate'] as Map<String, dynamic>),
      amountToPay: (json['amountToPay'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CarToJson(Car instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['brandName'] = instance.brandName;
  val['modelName'] = instance.modelName;
  writeNotNull('amountToPay', instance.amountToPay);
  val['carType'] = _$CarTypeEnumMap[instance.carType]!;
  writeNotNull('numberplate', instance.numberplate?.toJson());
  return val;
}

const _$CarTypeEnumMap = {
  CarType.truck: 'truck',
  CarType.hatchback: 'hatchback',
  CarType.suv: 'suv',
  CarType.crossover: 'crossover',
  CarType.fourbyfour: 'fourbyfour',
  CarType.pickup: 'pickup',
  CarType.van: 'van',
  CarType.sport: 'sport',
  CarType.micro: 'micro',
  CarType.bus: 'bus',
  CarType.sedan: 'sedan',
  CarType.bike: 'bike',
};
