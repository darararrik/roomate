import 'package:data/data.dart';
import 'package:domain/domain.dart';

class FilterMapper {
  static FilterModel toModel(FilterDto dto) => FilterModel(
    rentGoal: OptionMapper.toModelList(dto.rentGoal),
    propertyTypes: OptionMapper.toModelList(dto.propertyTypes),
    roomsCounts: OptionMapper.toModelList(dto.roomsCounts),
    rentDuration: OptionMapper.toModelList(dto.rentDuration),
  );
}

extension FilterDtoX on FilterDto {
  FilterModel toModel() => FilterMapper.toModel(this);
}

class OptionMapper {
  static OptionModel toModel(OptionDto dto) => OptionModel(id: dto.id ?? 0, title: dto.title ?? '');
  static List<OptionModel> toModelList(List<OptionDto>? dtos) =>
      dtos?.map(OptionMapper.toModel).toList() ?? [];
}
