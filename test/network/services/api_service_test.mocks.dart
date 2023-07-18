// Mocks generated by Mockito 5.4.2 from annotations
// in flutter_vehicle_makes/test/network/services/api_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:dio/dio.dart' as _i2;
import 'package:flutter_vehicle_makes/models/response/manufacturers_response.dart'
    as _i6;
import 'package:flutter_vehicle_makes/network/services/api_service.dart' as _i4;
import 'package:flutter_vehicle_makes/network/services/http_client.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeDio_0 extends _i1.SmartFake implements _i2.Dio {
  _FakeDio_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeHttpClient_1 extends _i1.SmartFake implements _i3.HttpClient {
  _FakeHttpClient_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ApiService].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiService extends _i1.Mock implements _i4.ApiService {
  MockApiService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Dio get dio => (super.noSuchMethod(
        Invocation.getter(#dio),
        returnValue: _FakeDio_0(
          this,
          Invocation.getter(#dio),
        ),
      ) as _i2.Dio);
  @override
  set dio(_i2.Dio? _dio) => super.noSuchMethod(
        Invocation.setter(
          #dio,
          _dio,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i3.HttpClient get http => (super.noSuchMethod(
        Invocation.getter(#http),
        returnValue: _FakeHttpClient_1(
          this,
          Invocation.getter(#http),
        ),
      ) as _i3.HttpClient);
  @override
  set http(_i3.HttpClient? _http) => super.noSuchMethod(
        Invocation.setter(
          #http,
          _http,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Future<_i6.ManufacturersResponse?> getAllVehicleManufacturers({
    int? page = 1,
    String? format = r'json',
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllVehicleManufacturers,
          [],
          {
            #page: page,
            #format: format,
          },
        ),
        returnValue: _i5.Future<_i6.ManufacturersResponse?>.value(),
      ) as _i5.Future<_i6.ManufacturersResponse?>);
  @override
  _i5.Future<dynamic> getMakeForManufacturer({
    required String? manufacturerName,
    String? format = r'json',
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMakeForManufacturer,
          [],
          {
            #manufacturerName: manufacturerName,
            #format: format,
          },
        ),
        returnValue: _i5.Future<dynamic>.value(),
      ) as _i5.Future<dynamic>);
}