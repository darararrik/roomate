import 'package:domain/domain.dart';

import 'package:data/data.dart';

abstract class OptionMapper {
  static OptionModel toModel(OptionData dto) {
    return OptionModel(id: dto.id ?? 0, title: dto.title ?? '');
  }

  static OptionData toDto(OptionModel model) {
    return OptionData(id: model.id, title: model.title);
  }

  static List<OptionModel> toModelList(List<OptionData>? dtos) =>
      dtos?.map(OptionMapper.toModel).toList() ?? [];
}

abstract class AdFormMapper {
  static List<OptionModel> _toOptionList(List<OptionData>? dtos) =>
      dtos?.map(OptionMapper.toModel).toList() ?? [];

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

abstract class PreferencesTagsMapper {
  static PreferencesTagsModel toModel(PreferencesTagsData dto) {
    List<OptionModel> mapList(List<OptionData>? list) =>
        list?.map(OptionMapper.toModel).toList() ?? [];

    return PreferencesTagsModel(
      communication: mapList(dto.communication),
      sleep: mapList(dto.sleep),
      employment: mapList(dto.employment),
      badHabits: mapList(dto.badHabits),
      guests: mapList(dto.guests),
      noiseLevel: mapList(dto.noiseLevel),
      cleaning: mapList(dto.cleaning),
      pets: mapList(dto.pets),
      petsAttitude: mapList(dto.petsAttitude),
    );
  }
}
