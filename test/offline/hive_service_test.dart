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

  test('Open a Hive box test', () async {
    when(mockHiveService.openHiveBox(boxName: anyNamed('boxName')))
        .thenAnswer((_) async => mockBox);

    final response = await mockHiveService.openHiveBox(boxName: 'boxName');

    expect(response, isA<MockBox>());
    expect(response, mockBox);

    verifyNever(mockBox.put('key', 'value'));
  });

  test('Clear a Hive box test', () {
    when(mockHiveService.clearHiveBox(box: anyNamed('box')))
        .thenAnswer((_) => mockBox);

    mockHiveService.clearHiveBox(box: mockBox);

    verifyNever(mockBox.isEmpty);
    verifyNever(mockBox.get('key') == null);
  });
}
