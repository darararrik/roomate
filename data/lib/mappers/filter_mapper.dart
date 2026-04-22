import 'package:domain/domain.dart';

import 'package:data/data.dart';

class FilterMapper {
  static FilterModel toModel(FilterData dto) => FilterModel(
    rentGoal: OptionMapper.toModelList(dto.rentGoal),
    propertyTypes: OptionMapper.toModelList(dto.propertyTypes),
    roomsCounts: OptionMapper.toModelList(dto.roomsCounts),
    rentDuration: OptionMapper.toModelList(dto.rentDuration),
  );
}

extension FilterDtoX on FilterData {
  FilterModel toModel() => FilterMapper.toModel(this);
}

class OptionMapper {
  static OptionModel toModel(OptionData dto) =>
      OptionModel(id: dto.id ?? 0, title: dto.title ?? '');
  static List<OptionModel> toModelList(List<OptionData>? dtos) =>
      dtos?.map(OptionMapper.toModel).toList() ?? [];
}
