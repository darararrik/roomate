import 'package:domain/domain.dart';

import 'package:data/data.dart';

class SingInResponseMapper {
  static SignInResponseModel toModel(SignInResponseData data) {
    return SignInResponseModel(
      message: data.message ?? '',
      expiresInSeconds: data.expiresInSeconds ?? 0,
    );
  }
}
