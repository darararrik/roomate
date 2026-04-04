import 'package:data/data.dart';
import 'package:domain/domain.dart';

mixin ProfileMockDataSource implements ProfileDataSource {
  @override
  Future<UserModel> createProfile(UserModel user) async {
    final json = UserMapper.toData(user).toJson();
    MockStorage.userProfile = json;
    return user.withDelay(milliseconds: 0);
  }

  @override
  Future<UserModel> fetchProfile() async {
    final json = MockStorage.userProfile;
    if (json == null) {
      throw Exception("User not found");
    }
    return UserMapper.toModel(UserData.fromJson(json)).withDelay();
  }

  @override
  Future<UserModel> updateProfile(UserModel user) async {
    final json = UserMapper.toData(user).toJson();
    MockStorage.userProfile = json;
    return user.withDelay();
  }
}
