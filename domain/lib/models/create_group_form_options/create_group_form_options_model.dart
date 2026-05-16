import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

part 'create_group_form_options_model.freezed.dart';

@freezed
sealed class CreateGroupFormOptionsModel with _$CreateGroupFormOptionsModel {
  const factory CreateGroupFormOptionsModel({
    @Default([]) List<OptionModel> lookingForGender,
    @Default([]) List<OptionModel> communication,
    @Default([]) List<OptionModel> sleep,
    @Default([]) List<OptionModel> employment,
    @Default([]) List<OptionModel> badHabits,
    @Default([]) List<OptionModel> guests,
    @Default([]) List<OptionModel> noiseLevel,
    @Default([]) List<OptionModel> cleaning,
    @Default([]) List<OptionModel> pets,
    @Default([]) List<OptionModel> petsAttitude,
    @Default([]) List<OptionModel> propertyType,
    @Default([]) List<OptionModel> roomsCount,
    @Default([]) List<OptionModel> furniture,
    @Default([]) List<OptionModel> amenities,
    @Default([]) List<OptionModel> bathroom,
    @Default([]) List<OptionModel> appliances,
    @Default([]) List<OptionModel> currency,
    @Default([]) List<OptionModel> rentDuration,
    @Default([]) List<OptionModel> utilitiesPayment,
  }) = _CreateGroupFormOptionsModel;
}
