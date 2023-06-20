import 'package:booking_developers/domain/entity/account_entity.dart';

import '../http/http_error.dart';

class RemoteAccountModel {
  final String accessToken;
  RemoteAccountModel(this.accessToken);

  factory RemoteAccountModel.fromJson(Map json) {
    if (!json.containsKey('accessToken')) {
      throw HttpError.invalidData;
    }
    return RemoteAccountModel(json['accesToken']);
  }
  AccountEntity toEntity() => AccountEntity(accessToken);
}
