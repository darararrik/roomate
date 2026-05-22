import 'package:data/data.dart';
import 'package:domain/domain.dart';

class OwnerAdsMapper {
  static MyAdModel toMyAdModel(MyAdData dto) {
    return MyAdModel(
      id: dto.id,
      title: dto.title,
      description: dto.description,
      imageUrls: dto.imageUrls,
      price: dto.price,
      roomsCount: dto.roomsCount,
      area: dto.area,
      floor: dto.floor,
      totalFloor: dto.totalFloor,
      address: dto.address,
      status: MyAdStatus.fromValue(dto.status),
    );
  }

  static AdApplicationModel toApplicationModel(AdApplicationData dto) {
    final ad = dto.ad ?? const MyAdData();
    final tenant = TenantMapper.toModel(dto.tenant);

    return AdApplicationModel(
      id: dto.id,
      status: AdApplicationStatus.fromValue(dto.status),
      createdAt: dto.createdAt,
      ad: toMyAdModel(ad),
      tenant: tenant,
    );
  }

  static AdApplicationDetailModel toApplicationDetailModel(
    AdApplicationData dto,
  ) {
    final ad = dto.ad ?? const MyAdData();

    return AdApplicationDetailModel(
      id: dto.id,
      status: AdApplicationStatus.fromValue(dto.status),
      createdAt: dto.createdAt,
      updatedAt: dto.updatedAt,
      ad: toMyAdModel(ad),
      tenant: TenantMapper.toModel(dto.tenant),
      tenantProfile: TenantMapper.toProfileModel(dto.tenantProfile),
    );
  }
}
