import 'package:domain/domain.dart';

import 'package:data/dto/location/street_dto.dart';

extension StreetDtoExtension on StreetDto {
  StreetModel toModel() => StreetModel(
    id: id ?? 0,
    name: name ?? '',
    district: district ?? '',
    regionLine: regionLine ?? '',
  );
}

extension StreetModelExtension on StreetModel {
  StreetDto toData() => StreetDto(id: id, name: name, district: district, regionLine: regionLine);
}
