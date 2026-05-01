import 'package:domain/domain.dart';

import 'package:data/data.dart';

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
      city: userData?.city ?? '',
      isOwner: userData?.isOwner ?? false,
      preferences: SelectedUserPreferencesMapper.toModel(userData?.preferences),
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
      city: user.city,
      isOwner: user.isOwner,
      preferences: SelectedUserPreferencesMapper.toData(user.preferences),
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
