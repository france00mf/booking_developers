import 'package:booking_developers/data/http/http.dart';
import 'package:booking_developers/data/use_case/remote_authentication.dart';
import 'package:booking_developers/domain/use_case/authentication.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class HttpClientSpy extends Mock implements HttpClient {}

void main() {
  RemoteAuthentication? sut;
  HttpClientSpy? httpClient;
  String? url;
  AuthenticationParams? params;

  Map mockValidData() => {'accessToken': faker.guid.guid()};

  PostExpectation mockRequest() => when(httpClient?.request(
      url: anyNamed("url"),
      method: anyNamed("method"),
      body: anyNamed("body")));

  void mockHttpData(Map data) {
    mockRequest().thenAnswer((_) async => data);
  }

  void mockHttpError(HttpError error) {
    mockRequest().thenThrow(error);
  }

  setUp(() {
    sut = RemoteAuthentication(httpClient: httpClient, url: url);
    httpClient = HttpClientSpy();
    params = AuthenticationParams(
        email: faker.internet.email(), secrect: faker.internet.password());
    url = faker.internet.httpUrl();
    mockHttpData(mockValidData());
  });

  test('Should call HttpClient with correct values', () async {
    await sut!.auth(params!);
  });
}
