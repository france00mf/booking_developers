import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class HttpClientSpy extends Mock implements HttpClient {}

void main() {
  RemoteAuthentication sut;
  HttpClientSpy httpClient;
  String url;
  AuthenticatinParams params;

  PostExpectation mockRequest() => when(httpClient.request(
      url: anyNamed("url"),
      method: anyNamed("method"),
      body: anyNamed("body")));

  setUp(() {
    sut = RemoteAuthenticationParams();
    httpClient = HttpClientSpy();
    params = AuthenticationParams(
        email: faker.internet.email(), secret: faker.internet.password());
    url = faker.internet.httpUrl();
  });

  test('', () {});
}
