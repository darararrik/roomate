import 'package:roomate/data/dto/ad_form_options/ad_form_options_dto.dart';
import 'package:roomate/data/dto/apartaments/filter_dto.dart';
import 'package:roomate/domain/models/ad_form/ad_form_options_model.dart';
import 'package:roomate/domain/models/common/option_model.dart';

class AdFormMapper {
  static OptionModel _toOptionModel(OptionDto dto) =>
      OptionModel(id: dto.id ?? 0, title: dto.title ?? '');

  static List<OptionModel> _toOptionList(List<OptionDto>? dtos) =>
      dtos?.map(_toOptionModel).toList() ?? [];

  static AdFormOptionsModel toModel(AdFormOptionsDto dto) => AdFormOptionsModel(
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

extension AdFormOptionsDtoX on AdFormOptionsDto {
  AdFormOptionsModel toModel() => AdFormMapper.toModel(this);
}
