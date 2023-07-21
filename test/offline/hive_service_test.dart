import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_vehicle_makes/offline/services/hive_service.dart';
import 'package:hive/hive.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'hive_service_test.mocks.dart';

@GenerateMocks([HiveService, Box])
void main() {
  late MockHiveService mockHiveService;
  late MockBox mockBox;

  setUp(() {
    mockHiveService = MockHiveService();
    mockBox = MockBox();
  });

  test('Open a Hive box and test data fetch', () async {
    when(mockHiveService.openHiveBox(boxName: anyNamed('boxName')))
        .thenAnswer((_) async => mockBox);

    when(mockBox.getAt(any)).thenAnswer((_) => 'value');

    final response = await mockHiveService.openHiveBox(boxName: 'boxName');
    final data = mockBox.getAt(0);

    expect(response, isA<MockBox>());
    expect(response, mockBox);

    // fetch data from Hive box
    expect(data, equals('value'));
  });

  test('Clear a Hive box test', () {
    when(mockHiveService.clearHiveBox(box: anyNamed('box')))
        .thenAnswer((_) => mockBox);

    when(mockBox.get(any)).thenAnswer((_) => null);

    mockHiveService.clearHiveBox(box: mockBox);
    final response = mockBox.get(0);

    expect(response, null);
  });
}
