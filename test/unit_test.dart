import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_vehicle_makes/network/services/http_client.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'unit_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  MockDio mockDio = MockDio();
  late HttpClient http;

  setUp(() {
    http = HttpClient.test(mockDio);
  });

  group('HTTPClient', () {
    test('Returns GET response after successful HTTP call', () async {
      final httpResponse = {
        "Count": 90,
        "Message": "Response returned successfully",
        "Search Criteria": null,
      };

      when(mockDio.get(any)).thenAnswer((realInvocation) => Future.value(
            Response(
              statusCode: 200,
              data: httpResponse,
              requestOptions: RequestOptions(
                path: '/requestOptionsPath',
              ),
            ),
          ));

      final response = await http.get('/testURL');

      final expected = {
        "Count": 90,
        "Message": "Response returned successfully",
        "Search Criteria": null,
      };

      expect(response, equals(expected));
    });
  });
}
