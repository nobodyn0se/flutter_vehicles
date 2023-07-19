// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_manufacturer.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const VehicleManufacturerSchema = Schema(
  name: r'VehicleManufacturer',
  id: 8907628808632352146,
  properties: {
    r'country': PropertySchema(
      id: 0,
      name: r'country',
      type: IsarType.string,
    ),
    r'manufacturerCommonName': PropertySchema(
      id: 1,
      name: r'manufacturerCommonName',
      type: IsarType.string,
    ),
    r'manufacturerID': PropertySchema(
      id: 2,
      name: r'manufacturerID',
      type: IsarType.long,
    ),
    r'manufacturerName': PropertySchema(
      id: 3,
      name: r'manufacturerName',
      type: IsarType.string,
    )
  },
  estimateSize: _vehicleManufacturerEstimateSize,
  serialize: _vehicleManufacturerSerialize,
  deserialize: _vehicleManufacturerDeserialize,
  deserializeProp: _vehicleManufacturerDeserializeProp,
);

int _vehicleManufacturerEstimateSize(
  VehicleManufacturer object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.country.length * 3;
  {
    final value = object.manufacturerCommonName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.manufacturerName.length * 3;
  return bytesCount;
}

void _vehicleManufacturerSerialize(
  VehicleManufacturer object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.country);
  writer.writeString(offsets[1], object.manufacturerCommonName);
  writer.writeLong(offsets[2], object.manufacturerID);
  writer.writeString(offsets[3], object.manufacturerName);
}

VehicleManufacturer _vehicleManufacturerDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = VehicleManufacturer(
    country: reader.readStringOrNull(offsets[0]) ?? '',
    manufacturerCommonName: reader.readStringOrNull(offsets[1]),
    manufacturerID: reader.readLongOrNull(offsets[2]) ?? 0,
    manufacturerName: reader.readStringOrNull(offsets[3]) ?? '',
  );
  return object;
}

P _vehicleManufacturerDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 3:
      return (reader.readStringOrNull(offset) ?? '') as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension VehicleManufacturerQueryFilter on QueryBuilder<VehicleManufacturer,
    VehicleManufacturer, QFilterCondition> {
  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      countryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      countryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      countryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      countryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'country',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      countryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      countryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      countryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      countryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'country',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      countryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      countryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerCommonNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'manufacturerCommonName',
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerCommonNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'manufacturerCommonName',
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerCommonNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'manufacturerCommonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerCommonNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'manufacturerCommonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerCommonNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'manufacturerCommonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerCommonNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'manufacturerCommonName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerCommonNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'manufacturerCommonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerCommonNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'manufacturerCommonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerCommonNameContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'manufacturerCommonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerCommonNameMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'manufacturerCommonName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerCommonNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'manufacturerCommonName',
        value: '',
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerCommonNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'manufacturerCommonName',
        value: '',
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerIDEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'manufacturerID',
        value: value,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerIDGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'manufacturerID',
        value: value,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerIDLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'manufacturerID',
        value: value,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerIDBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'manufacturerID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'manufacturerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'manufacturerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'manufacturerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'manufacturerName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'manufacturerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'manufacturerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'manufacturerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'manufacturerName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'manufacturerName',
        value: '',
      ));
    });
  }

  QueryBuilder<VehicleManufacturer, VehicleManufacturer, QAfterFilterCondition>
      manufacturerNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'manufacturerName',
        value: '',
      ));
    });
  }
}

extension VehicleManufacturerQueryObject on QueryBuilder<VehicleManufacturer,
    VehicleManufacturer, QFilterCondition> {}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleManufacturer _$VehicleManufacturerFromJson(Map<String, dynamic> json) =>
    VehicleManufacturer(
      country: json['Country'] as String? ?? '',
      manufacturerCommonName: json['Mfr_CommonName'] as String?,
      manufacturerID: json['Mfr_ID'] as int? ?? 0,
      manufacturerName: json['Mfr_Name'] as String? ?? '',
    );

Map<String, dynamic> _$VehicleManufacturerToJson(
        VehicleManufacturer instance) =>
    <String, dynamic>{
      'Country': instance.country,
      'Mfr_CommonName': instance.manufacturerCommonName,
      'Mfr_ID': instance.manufacturerID,
      'Mfr_Name': instance.manufacturerName,
    };
