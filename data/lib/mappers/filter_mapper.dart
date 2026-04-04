import 'package:data/data.dart';
import 'package:domain/domain.dart';

OptionModel _toOptionModel(OptionDto dto) =>
    OptionModel(id: dto.id ?? 0, title: dto.title ?? '');

List<OptionModel> _toOptionList(List<OptionDto>? dtos) =>
    dtos?.map(_toOptionModel).toList() ?? [];

class FilterMapper {
  static FilterModel toModel(FilterDto dto) => FilterModel(
    categories: _toOptionList(dto.categories),
    propertyTypes: _toOptionList(dto.propertyTypes),
    roomsCounts: _toOptionList(dto.roomsCounts),
  );
}

extension FilterDtoX on FilterDto {
  FilterModel toModel() => FilterMapper.toModel(this);
}
