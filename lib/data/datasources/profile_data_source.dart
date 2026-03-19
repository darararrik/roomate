import 'package:roomate/domain/models/user_model.dart';

abstract interface class ProfileDataSource {
  Future<UserModel> createProfile(UserModel user);
  Future<UserModel> fetchProfile();
}
