import 'package:flutter_test/flutter_test.dart';

class HttpClientSpy extends Mock implements HttpClient {}

void main() {
  RemoteAuthentication sut;
  HttpClientSpy httpClient;
  String url;
  AuthenticatinParams params;

  setUp(() {
    sut = RemoteAuthenticationParams();
    httpClient = HttpClientSpy();
    params = AuthenticationParams(
        email: faker.internet.email(), secret: faker.internet.password());
    url = faker.internet.httpUrl();
  });

  test('', () {});
}
