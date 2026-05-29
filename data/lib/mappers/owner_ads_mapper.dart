import 'package:data/data.dart';
import 'package:domain/domain.dart';

class OwnerAdsMapper {
  static MyAdModel toMyAdModel(MyAdData dto, {String baseUrl = ''}) {
    return MyAdModel(
      id: dto.id,
      title: dto.title,
      description: dto.description,
      imageUrls: resolveBackendMediaUrls(dto.imageUrls, baseUrl: baseUrl),
      price: dto.price,
      roomsCount: dto.roomsCount,
      area: dto.area,
      floor: dto.floor,
      totalFloor: dto.totalFloor,
      address: dto.address,
      status: MyAdStatus.fromValue(dto.status),
    );
  }

  static AdApplicationModel toApplicationModel(
    AdApplicationData dto, {
    String baseUrl = '',
  }) {
    final ad = dto.ad ?? const MyAdData();
    final tenant = TenantMapper.toModel(dto.tenant);

    return AdApplicationModel(
      id: dto.id,
      status: AdApplicationStatus.fromValue(dto.status),
      createdAt: dto.createdAt,
      ad: toMyAdModel(ad, baseUrl: baseUrl),
      tenant: tenant,
    );
  }

  static AdApplicationDetailModel toApplicationDetailModel(
    AdApplicationData dto,
    {String baseUrl = ''}
  ) {
    final ad = dto.ad ?? const MyAdData();

    return AdApplicationDetailModel(
      id: dto.id,
      status: AdApplicationStatus.fromValue(dto.status),
      createdAt: dto.createdAt,
      updatedAt: dto.updatedAt,
      ad: toMyAdModel(ad, baseUrl: baseUrl),
      tenant: TenantMapper.toModel(dto.tenant),
      tenantProfile: TenantMapper.toProfileModel(dto.tenantProfile),
    );
  }
}
