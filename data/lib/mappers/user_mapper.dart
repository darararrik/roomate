import 'package:domain/domain.dart';

import 'package:data/lib.dart';

abstract class UserMapper {
  static UserModel toModel(UserData? userData) {
    return UserModel(
      id: userData?.id ?? '',
      firstName: userData?.firstName ?? '',
      lastName: userData?.lastName ?? '',
      avatarUrl: userData?.avatarUrl ?? '',
      gender: GenderMapper.toModel(userData?.gender ?? ''),
      phone: userData?.phone ?? '',
      age: userData?.age ?? 0,
      isVerified: userData?.isVerified ?? false,
      tags: userData?.tags?.map((e) => TagMapper.toModel(e)).toList() ?? [],
      city: userData?.city ?? '',
      isOwner: userData?.isOwner ?? false,
    );
  }

  static UserData toData(UserModel user) {
    return UserData(
      id: user.id,
      firstName: user.firstName,
      lastName: user.lastName,
      avatarUrl: user.avatarUrl,
      gender: GenderMapper.toData(user.gender),
      phone: user.phone,
      age: user.age,
      isVerified: user.isVerified,
      tags: user.tags.map((e) => TagMapper.toData(e)).toList(),
      city: user.city,
      isOwner: user.isOwner,
    );
  }
}
