

abstract class Authentication {
  Future<AccountEntity> auth(AuthenticationParams params);
}

class AuthenticationParams {
  final String? email;
  final String? secrect;

  AuthenticationParams({required this.email, required this.secrect})
}
