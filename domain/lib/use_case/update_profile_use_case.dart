import 'package:shared/shared.dart';

import 'package:domain/models/profile/profile_model.dart';
import 'package:domain/repository/profile_repository.dart';

class UpdateProfileUseCase {
  const UpdateProfileUseCase(this._repository);

  final IProfileRepository _repository;

  Future<UpdateProfileResult> call(ProfileModel profile) async {
    final result = await _repository.updateProfile(profile);

    return result.fold(
      (error) => UpdateProfileResult(profile: profile, error: error),
      (savedProfile) => UpdateProfileResult(profile: savedProfile),
    );
  }
}

class UpdateProfileResult {
  const UpdateProfileResult({required this.profile, this.error});

  final ProfileModel profile;
  final RemoteException? error;
}
