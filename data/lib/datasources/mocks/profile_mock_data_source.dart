import 'package:dartz/dartz.dart';
import 'package:data/lib.dart';
import 'package:domain/lib.dart';
import 'package:shared/exception/remote_exception.dart';

mixin ProfileMockDataSource implements ProfileDataSource {
  @override
  Future<Either<RemoteException, UserModel>> createProfile(UserModel user) async {
    final json = UserMapper.toData(user).toJson();
    MockStorage.userProfile = json;
    return Right(await user.withDelay(milliseconds: 0));
  }

  @override
  Future<Either<RemoteException, UserModel>> fetchProfile() async {
    final json = MockStorage.userProfile;
    if (json == null) {
      return Left(
        RemoteException(
          kind: RemoteExceptionKind.serverUndefined,
          rootException: Exception("User not found"),
        ),
      );
    }
    return Right(await UserMapper.toModel(UserData.fromJson(json)).withDelay());
  }

  @override
  Future<Either<RemoteException, UserModel>> updateProfile(UserModel user) async {
    if (user.isOwner) {
      user = user.copyWith(firstName: "Собственник");
    }
    final json = UserMapper.toData(user).toJson();
    MockStorage.userProfile = json;
    return Right(await user.withDelay());
  }
}
