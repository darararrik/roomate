import 'package:roomate/data/datasources/remote/mocks/mock_storage.dart';
import 'package:roomate/data/dto/user/user_data.dart';
import 'package:roomate/data/mappers/user_mapper.dart';
import 'package:roomate/domain/models/user_model.dart';

mixin ProfileMockDataSource {
  Future<UserModel> createProfile(UserModel user) async {
    await Future.delayed(const Duration(milliseconds: 600));
    final json = UserMapper.toData(user).toJson();
    MockStorage.userProfile = json;
    return user;
  }

  Future<UserModel> fetchProfile() async {
    await Future.delayed(const Duration(milliseconds: 600));
    final json = MockStorage.userProfile;
    if (json == null) {
      throw Exception("User not found");
    }
    return UserMapper.toModel(UserData.fromJson(json));
  }
}
