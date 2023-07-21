import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_vehicle_makes/network/services/api_service.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'api_service_test.mocks.dart';

@GenerateMocks([ApiService])
void main() {
  MockApiService mockApiService = MockApiService();

  group('Successful GET calls', () {
    test('GET all manufacturers after a successful HTTP call', () async {
      when(mockApiService.getAllVehicleManufacturers())
          .thenAnswer((_) => Future.value());

      mockApiService.getAllVehicleManufacturers(page: 1, format: 'json');
      verify(mockApiService.getAllVehicleManufacturers(page: 1, format: 'json'))
          .called(1);
    });

    test('GET make details after a successful HTTP call', () async {
      when(mockApiService.getMakeForManufacturer(
              manufacturerName: anyNamed('manufacturerName')))
          .thenAnswer((_) => Future.value());

      mockApiService.getMakeForManufacturer(manufacturerName: 'Test');

      verify(mockApiService.getMakeForManufacturer(manufacturerName: 'Test'))
          .called(1);
    });
  });

  group('Unsuccessful GET calls', () {
    test('All manufacturers call returns null after HTTP exception', () async {
      when(mockApiService.getAllVehicleManufacturers(
              page: anyNamed('page'), format: anyNamed('format')))
          .thenAnswer((_) async => null);

      final response = await mockApiService.getAllVehicleManufacturers(
          page: 1, format: 'json');

      expect(response, null);
    });
  });
}
