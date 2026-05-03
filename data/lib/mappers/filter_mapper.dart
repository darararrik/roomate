import 'package:domain/domain.dart';

import 'package:data/data.dart';

class FilterMapper {
  static FilterModel toModel(FilterData dto) => FilterModel(
    rentGoal: OptionMapper.toModelList(dto.rentGoal),
    propertyTypes: OptionMapper.toModelList(dto.propertyTypes),
    roomsCounts: OptionMapper.toModelList(dto.roomsCounts),
    rentDuration: OptionMapper.toModelList(dto.rentDuration),
    districts: OptionMapper.toModelList(dto.districts),
  );
}

extension FilterDtoX on FilterData {
  FilterModel toModel() => FilterMapper.toModel(this);
}
