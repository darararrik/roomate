import 'package:dartz/dartz.dart';

import 'package:roomate/domain/enums/gender_enum.dart';
import 'package:roomate/domain/models/user_model.dart';
import 'package:roomate/domain/models/user_tag_model.dart';
import 'package:roomate/shared/exception/RemoteException.dart';

abstract interface class IProfileRepository {
  Future<Either<RemoteException, UserModel>> createProfile(
    String firstName,
    String lastName,
    String avatarUrl,
    GenderEnum gender,
    int age,
    List<UserTagModel> tags,
  );
  Future<Either<RemoteException, void>> deleteProfile();
  Future<Either<RemoteException, void>> doVerification();
}
