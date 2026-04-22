import 'package:data/data.dart';
import 'package:domain/domain.dart';

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
