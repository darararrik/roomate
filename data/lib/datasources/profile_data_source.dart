import 'package:dartz/dartz.dart';
import 'package:domain/lib.dart';
import 'package:shared/shared.dart';

abstract interface class ProfileDataSource {
  Future<Either<RemoteException, UserModel>> createProfile(UserModel user);
  Future<Either<RemoteException, UserModel>> fetchProfile();
  Future<Either<RemoteException, UserModel>> updateProfile(UserModel user);
  Future<Either<RemoteException, List<TagGroupModel>>> fetchTagsAboutSelf();
}
