import 'package:data/lib.dart';
import 'package:domain/domain.dart';

class AdFormMapper {
  static OptionModel _toOptionModel(OptionData dto) =>
      OptionModel(id: dto.id ?? 0, title: dto.title ?? '');

  static List<OptionModel> _toOptionList(List<OptionData>? dtos) =>
      dtos?.map(_toOptionModel).toList() ?? [];

  static AdFormOptionsModel toModel(AdFormOptionsData dto) => AdFormOptionsModel(
    rentGoal: _toOptionList(dto.rentGoal),
    rentPeriod: _toOptionList(dto.rentPeriod),
    whoCanRent: _toOptionList(dto.whoCanRent),
    premisesType: _toOptionList(dto.premisesType),
    propertyType: _toOptionList(dto.propertyType),
    roomsCount: _toOptionList(dto.roomsCount),
    layout: _toOptionList(dto.layout),
    renovation: _toOptionList(dto.renovation),
    elevators: _toOptionList(dto.elevators),
    balconies: _toOptionList(dto.balconies),
    furniture: _toOptionList(dto.furniture),
    amenities: _toOptionList(dto.amenities),
    bathroom: _toOptionList(dto.bathroom),
    appliances: _toOptionList(dto.appliances),
    stove: _toOptionList(dto.stove),
    currency: _toOptionList(dto.currency),
    prepayment: _toOptionList(dto.prepayment),
    rentDuration: _toOptionList(dto.rentDuration),
    rentConditions: _toOptionList(dto.rentConditions),
    contactMethod: _toOptionList(dto.contactMethod),
  );
}

extension AdFormOptionsDtoX on AdFormOptionsData {
  AdFormOptionsModel toModel() => AdFormMapper.toModel(this);
}
