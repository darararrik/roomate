import 'package:domain/domain.dart';

import 'package:roomate/lib.dart';

extension ApartmentAmenityIconX on ApartmentAmenity {
  String get iconPath => switch (this) {
    ApartmentAmenity.childrenAllowed => AppIcons.children,
    ApartmentAmenity.petsAllowed => AppIcons.animals,
    ApartmentAmenity.internet => AppIcons.wifi,
    ApartmentAmenity.trashChute => AppIcons.trash,
    ApartmentAmenity.dishes => AppIcons.dishes,
    ApartmentAmenity.videoIntercom => AppIcons.videoIntercom,
    ApartmentAmenity.concierge => AppIcons.concierge,
    ApartmentAmenity.smartHome => AppIcons.smartHome,
    ApartmentAmenity.shower => AppIcons.bathroom,
    ApartmentAmenity.bath => AppIcons.bathroom,
    ApartmentAmenity.fridge => AppIcons.fridge,
    ApartmentAmenity.tv => AppIcons.tv,
    ApartmentAmenity.washingMachine => AppIcons.washingMachine,
    ApartmentAmenity.airConditioner => AppIcons.airConditioner,
    ApartmentAmenity.dishwasher => AppIcons.dishwasher,
  };
}
