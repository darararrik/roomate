import 'package:shared/shared.dart';

import 'package:domain/repository/auth_repository.dart';

class LogoutUseCase {
  const LogoutUseCase(this._repository);

  final AuthRepository _repository;

  Future<RemoteException?> call() async {
    final result = await _repository.logout();

    return result.fold((error) => error, (_) => null);
  }
}
