import 'package:booking_developers/data/http/http_client.dart';
import 'package:booking_developers/domain/entity/account_entity.dart';
import 'package:booking_developers/domain/use_case/authentication.dart';
import 'package:meta/meta.dart';

class RemoteAuthentication implements Authentication {
  final HttpClient? httpClient;
  final String? url;

  RemoteAuthentication({@required this.httpClient, @required this.url});
  Future<AccountEntity> auth(AuthenticationParams params) {}
}
