import 'package:dartz/dartz.dart';

import 'package:roomate/domain/domain.dart';
import 'package:roomate/shared/exception/RemoteException.dart';

abstract interface class IProfileRepository {
  Future<Either<RemoteException, UserModel>> createProfile(
    String firstName,
    String lastName,
    String avatarUrl,
    GenderEnum gender,
    int age,
    List<TagModel> tags,
  );
  Future<Either<RemoteException, UserModel>> fetchProfile();
  Future<Either<RemoteException, List<TagGroupModel>>> fetchTagsAboutSelf();
  Future<Either<RemoteException, void>> deleteProfile();
  Future<Either<RemoteException, void>> doVerification();
}
