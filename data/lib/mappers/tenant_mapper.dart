import 'package:data/data.dart';
import 'package:domain/domain.dart';

class TenantMapper {
  static TenantModel toModel(TenantData? dto) {
    return TenantModel(
      id: dto?.id ?? '',
      firstName: dto?.firstName ?? '',
      lastName: dto?.lastName ?? '',
      avatarUrl: dto?.photo ?? '',
      phone: dto?.phone ?? '',
      age: dto?.age ?? 0,
      gender: dto?.gender ?? '',
      city: dto?.city ?? '',
    );
  }

  static TenantProfileModel toProfileModel(TenantProfileData? dto) {
    return TenantProfileModel(
      about: dto?.about ?? '',
      preferences: SelectedUserPreferencesMapper.toModel(dto?.preferences),
    );
  }
}
