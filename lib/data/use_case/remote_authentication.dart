import 'package:booking_developers/data/http/http_client.dart';
import 'package:booking_developers/domain/entity/account_entity.dart';
import 'package:booking_developers/domain/use_case/authentication.dart';
import 'package:meta/meta.dart';

class RemoteAuthentication implements Authentication {
  final HttpClient? httpClient;
  final String? url;

  RemoteAuthentication({@required this.httpClient, @required this.url});
  Future<AccountEntity> auth(AuthenticationParams params) async {
    final body = RemoteAuthenticationParams.fromDomain(params).toJson();
    final httpResponse =
        await httpClient!.request(url: url!, method: 'post', body: body);
  }
}

class RemoteAuthenticationParams {
  final String? email;
  final String? password;

  RemoteAuthenticationParams({@required this.email, @required this.password});

  factory RemoteAuthenticationParams.fromDomain(AuthenticationParams params) =>
      RemoteAuthenticationParams(email: params.email, password: params.secrect);

  Map toJson() => {'email': email, 'password': password};
}
