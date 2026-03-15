import 'package:roomate/data/dto/user/user_data.dart';
import 'package:roomate/data/mappers/gender_mapper.dart';
import 'package:roomate/data/mappers/tag_mapper.dart';
import 'package:roomate/domain/models/user_model.dart';

abstract class UserMapper {
  static UserModel toModel(UserData? userData) {
    return UserModel(
      id: userData?.id ?? 0,
      firstName: userData?.firstName ?? '',
      lastName: userData?.lastName ?? '',
      avatarUrl: userData?.avatarUrl ?? '',
      gender: GenderMapper.toModel(userData?.gender ?? ''),
      age: userData?.age ?? 0,
      isVerified: userData?.isVerified ?? false,
      tags: userData?.tags?.map((e) => TagMapper.toModel(e)).toList() ?? [],
      city: userData?.city ?? '',
    );
  }

  static UserData toData(UserModel user) {
    return UserData(
      id: user.id,
      firstName: user.firstName,
      lastName: user.lastName,
      avatarUrl: user.avatarUrl,
      gender: GenderMapper.toData(user.gender),
      age: user.age,
      isVerified: user.isVerified,
      tags: user.tags.map((e) => TagMapper.toData(e)).toList(),
      city: user.city,
    );
  }
}
