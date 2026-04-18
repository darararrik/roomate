import 'package:data/lib.dart';
import 'package:domain/domain.dart';

class SingInResponseMapper {
  static SignInResponseModel toModel(SignInResponseData data) {
    return SignInResponseModel(
      message: data.message ?? '',
      expiresInSeconds: data.expiresInSeconds ?? 0,
    );
  }
}
