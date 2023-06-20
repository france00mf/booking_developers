import 'package:booking_developers/domain/entity/account_entity.dart';
import 'package:meta/meta.dart';

abstract class Authentication {
  Future<AccountEntity> auth();
}

class AuthenticationParams {
  final String? email;
  final String? secrect;

  AuthenticationParams({@required this.email, @required this.secrect})
}
