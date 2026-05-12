import 'package:domain/domain.dart';

class CreateGroupFormOptionsModel {
  const CreateGroupFormOptionsModel({
    this.lookingForGender = const [],
    this.communication = const [],
    this.sleep = const [],
    this.employment = const [],
    this.badHabits = const [],
    this.guests = const [],
    this.noiseLevel = const [],
    this.cleaning = const [],
    this.pets = const [],
    this.petsAttitude = const [],
    this.propertyType = const [],
    this.roomsCount = const [],
    this.furniture = const [],
    this.amenities = const [],
    this.bathroom = const [],
    this.appliances = const [],
    this.currency = const [],
    this.rentDuration = const [],
    this.utilitiesPayment = const [],
  });

  final List<OptionModel> lookingForGender;
  final List<OptionModel> communication;
  final List<OptionModel> sleep;
  final List<OptionModel> employment;
  final List<OptionModel> badHabits;
  final List<OptionModel> guests;
  final List<OptionModel> noiseLevel;
  final List<OptionModel> cleaning;
  final List<OptionModel> pets;
  final List<OptionModel> petsAttitude;
  final List<OptionModel> propertyType;
  final List<OptionModel> roomsCount;
  final List<OptionModel> furniture;
  final List<OptionModel> amenities;
  final List<OptionModel> bathroom;
  final List<OptionModel> appliances;
  final List<OptionModel> currency;
  final List<OptionModel> rentDuration;
  final List<OptionModel> utilitiesPayment;
}
