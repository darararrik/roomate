import 'package:domain/domain.dart';

abstract interface class ProfileDataSource {
  Future<UserModel> createProfile(UserModel user);
  Future<UserModel> fetchProfile();
  Future<UserModel> updateProfile(UserModel user);
}
