import 'package:shared/shared.dart';

import 'package:domain/models/profile/profile_model.dart';
import 'package:domain/repository/profile_repository.dart';

class LoadCurrentProfileUseCase {
  const LoadCurrentProfileUseCase(this._repository);

  final IProfileRepository _repository;

  Future<LoadCurrentProfileResult> call() async {
    final result = await _repository.fetchProfile();

    return result.fold(
      (error) =>
          LoadCurrentProfileResult(profile: ProfileModel.guest(), error: error),
      (profile) => LoadCurrentProfileResult(profile: profile),
    );
  }
}

class LoadCurrentProfileResult {
  const LoadCurrentProfileResult({required this.profile, this.error});

  final ProfileModel profile;
  final RemoteException? error;
}
