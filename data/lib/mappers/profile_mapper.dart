import 'package:data/data.dart';
import 'package:domain/domain.dart';

abstract class ProfileMapper {
  static ProfileModel toModel(ProfileData? userData) {
    return ProfileModel(
      id: userData?.id ?? '',
      firstName: userData?.firstName ?? '',
      lastName: userData?.lastName ?? '',
      avatarUrl: userData?.avatarUrl ?? '',
      gender: GenderMapper.toModel(userData?.gender ?? ''),
      phone: userData?.phone ?? '',
      age: userData?.age ?? 0,
      isVerified: userData?.isVerified ?? false,
      // tags: userData?.tags?.map((e) => TagMapper.toModel(e)).toList() ?? [],
      city: userData?.city ?? '',
      isOwner: userData?.isOwner ?? false,
    );
  }

  static ProfileData toData(ProfileModel user) {
    return ProfileData(
      id: user.id,
      firstName: user.firstName,
      lastName: user.lastName,
      avatarUrl: user.avatarUrl,
      gender: GenderMapper.toData(user.gender),
      phone: user.phone,
      age: user.age,
      isVerified: user.isVerified,
      // tags: user.tags.map((e) => TagMapper.toData(e)).toList(),
      city: user.city,
      isOwner: user.isOwner,
    );
  }
}

abstract class UserMapper {
  static UserModel toModel(UserData data) {
    return UserModel(
      id: data.id ?? '',
      phone: data.phone ?? '',
      role: data.phone ?? '',
      isNewUser: data.isNewUser ?? false,
    );
  }
}
