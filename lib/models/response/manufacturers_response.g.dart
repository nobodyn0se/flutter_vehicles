// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturers_response.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetManufacturersResponseCollection on Isar {
  IsarCollection<ManufacturersResponse> get manufacturersResponses =>
      this.collection();
}

const ManufacturersResponseSchema = CollectionSchema(
  name: r'ManufacturersResponse',
  id: -7275559405321641098,
  properties: {
    r'count': PropertySchema(
      id: 0,
      name: r'count',
      type: IsarType.long,
    ),
    r'message': PropertySchema(
      id: 1,
      name: r'message',
      type: IsarType.string,
    ),
    r'searchCriteria': PropertySchema(
      id: 2,
      name: r'searchCriteria',
      type: IsarType.string,
    ),
    r'vehicleManufacturers': PropertySchema(
      id: 3,
      name: r'vehicleManufacturers',
      type: IsarType.objectList,
      target: r'VehicleManufacturer',
    )
  },
  estimateSize: _manufacturersResponseEstimateSize,
  serialize: _manufacturersResponseSerialize,
  deserialize: _manufacturersResponseDeserialize,
  deserializeProp: _manufacturersResponseDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'VehicleManufacturer': VehicleManufacturerSchema},
  getId: _manufacturersResponseGetId,
  getLinks: _manufacturersResponseGetLinks,
  attach: _manufacturersResponseAttach,
  version: '3.1.0+1',
);

int _manufacturersResponseEstimateSize(
  ManufacturersResponse object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.message.length * 3;
  {
    final value = object.searchCriteria;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.vehicleManufacturers.length * 3;
  {
    final offsets = allOffsets[VehicleManufacturer]!;
    for (var i = 0; i < object.vehicleManufacturers.length; i++) {
      final value = object.vehicleManufacturers[i];
      bytesCount +=
          VehicleManufacturerSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _manufacturersResponseSerialize(
  ManufacturersResponse object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.count);
  writer.writeString(offsets[1], object.message);
  writer.writeString(offsets[2], object.searchCriteria);
  writer.writeObjectList<VehicleManufacturer>(
    offsets[3],
    allOffsets,
    VehicleManufacturerSchema.serialize,
    object.vehicleManufacturers,
  );
}

ManufacturersResponse _manufacturersResponseDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ManufacturersResponse(
    count: reader.readLong(offsets[0]),
    message: reader.readString(offsets[1]),
    searchCriteria: reader.readStringOrNull(offsets[2]),
    vehicleManufacturers: reader.readObjectList<VehicleManufacturer>(
          offsets[3],
          VehicleManufacturerSchema.deserialize,
          allOffsets,
          VehicleManufacturer(),
        ) ??
        [],
  );
  object.id = id;
  return object;
}

P _manufacturersResponseDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readObjectList<VehicleManufacturer>(
            offset,
            VehicleManufacturerSchema.deserialize,
            allOffsets,
            VehicleManufacturer(),
          ) ??
          []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _manufacturersResponseGetId(ManufacturersResponse object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _manufacturersResponseGetLinks(
    ManufacturersResponse object) {
  return [];
}

void _manufacturersResponseAttach(
    IsarCollection<dynamic> col, Id id, ManufacturersResponse object) {
  object.id = id;
}

extension ManufacturersResponseQueryWhereSort
    on QueryBuilder<ManufacturersResponse, ManufacturersResponse, QWhere> {
  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ManufacturersResponseQueryWhere on QueryBuilder<ManufacturersResponse,
    ManufacturersResponse, QWhereClause> {
  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QAfterWhereClause>
      idBetween(
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

extension ManufacturersResponseQueryFilter on QueryBuilder<
    ManufacturersResponse, ManufacturersResponse, QFilterCondition> {
  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> countEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> countGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> countLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> countBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'count',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> messageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> messageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> messageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> messageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'message',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> messageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> messageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
          QAfterFilterCondition>
      messageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
          QAfterFilterCondition>
      messageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'message',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> messageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'message',
        value: '',
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> messageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'message',
        value: '',
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> searchCriteriaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'searchCriteria',
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> searchCriteriaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'searchCriteria',
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> searchCriteriaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'searchCriteria',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> searchCriteriaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'searchCriteria',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> searchCriteriaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'searchCriteria',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> searchCriteriaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'searchCriteria',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> searchCriteriaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'searchCriteria',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> searchCriteriaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'searchCriteria',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
          QAfterFilterCondition>
      searchCriteriaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'searchCriteria',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
          QAfterFilterCondition>
      searchCriteriaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'searchCriteria',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> searchCriteriaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'searchCriteria',
        value: '',
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> searchCriteriaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'searchCriteria',
        value: '',
      ));
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> vehicleManufacturersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'vehicleManufacturers',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> vehicleManufacturersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'vehicleManufacturers',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> vehicleManufacturersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'vehicleManufacturers',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> vehicleManufacturersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'vehicleManufacturers',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> vehicleManufacturersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'vehicleManufacturers',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
      QAfterFilterCondition> vehicleManufacturersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'vehicleManufacturers',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension ManufacturersResponseQueryObject on QueryBuilder<
    ManufacturersResponse, ManufacturersResponse, QFilterCondition> {
  QueryBuilder<ManufacturersResponse, ManufacturersResponse,
          QAfterFilterCondition>
      vehicleManufacturersElement(FilterQuery<VehicleManufacturer> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'vehicleManufacturers');
    });
  }
}

extension ManufacturersResponseQueryLinks on QueryBuilder<ManufacturersResponse,
    ManufacturersResponse, QFilterCondition> {}

extension ManufacturersResponseQuerySortBy
    on QueryBuilder<ManufacturersResponse, ManufacturersResponse, QSortBy> {
  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QAfterSortBy>
      sortByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.asc);
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QAfterSortBy>
      sortByCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.desc);
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QAfterSortBy>
      sortByMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.asc);
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QAfterSortBy>
      sortByMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.desc);
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QAfterSortBy>
      sortBySearchCriteria() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchCriteria', Sort.asc);
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QAfterSortBy>
      sortBySearchCriteriaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchCriteria', Sort.desc);
    });
  }
}

extension ManufacturersResponseQuerySortThenBy
    on QueryBuilder<ManufacturersResponse, ManufacturersResponse, QSortThenBy> {
  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QAfterSortBy>
      thenByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.asc);
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QAfterSortBy>
      thenByCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.desc);
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QAfterSortBy>
      thenByMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.asc);
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QAfterSortBy>
      thenByMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.desc);
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QAfterSortBy>
      thenBySearchCriteria() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchCriteria', Sort.asc);
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QAfterSortBy>
      thenBySearchCriteriaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchCriteria', Sort.desc);
    });
  }
}

extension ManufacturersResponseQueryWhereDistinct
    on QueryBuilder<ManufacturersResponse, ManufacturersResponse, QDistinct> {
  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QDistinct>
      distinctByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'count');
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QDistinct>
      distinctByMessage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'message', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ManufacturersResponse, ManufacturersResponse, QDistinct>
      distinctBySearchCriteria({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'searchCriteria',
          caseSensitive: caseSensitive);
    });
  }
}

extension ManufacturersResponseQueryProperty on QueryBuilder<
    ManufacturersResponse, ManufacturersResponse, QQueryProperty> {
  QueryBuilder<ManufacturersResponse, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ManufacturersResponse, int, QQueryOperations> countProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'count');
    });
  }

  QueryBuilder<ManufacturersResponse, String, QQueryOperations>
      messageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'message');
    });
  }

  QueryBuilder<ManufacturersResponse, String?, QQueryOperations>
      searchCriteriaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'searchCriteria');
    });
  }

  QueryBuilder<ManufacturersResponse, List<VehicleManufacturer>,
      QQueryOperations> vehicleManufacturersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vehicleManufacturers');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManufacturersResponse _$ManufacturersResponseFromJson(
        Map<String, dynamic> json) =>
    ManufacturersResponse(
      vehicleManufacturers: (json['Results'] as List<dynamic>)
          .map((e) => VehicleManufacturer.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['Count'] as int,
      message: json['Message'] as String,
      searchCriteria: json['SearchCriteria'] as String?,
    )..id = json['id'] as int?;

Map<String, dynamic> _$ManufacturersResponseToJson(
        ManufacturersResponse instance) =>
    <String, dynamic>{
      'Count': instance.count,
      'Message': instance.message,
      'SearchCriteria': instance.searchCriteria,
      'id': instance.id,
      'Results': instance.vehicleManufacturers,
    };
