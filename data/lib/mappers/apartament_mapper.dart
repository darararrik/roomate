import 'package:data/data.dart';
import 'package:domain/domain.dart';

class ApartamentMapper {
  static ApartamentModel toModel(ApartamentDto dto) {
    return ApartamentModel(
      id: dto.id ?? 0,
      title: dto.title ?? '',
      description: dto.description ?? '',
      imageUrls: dto.imageUrls ?? const [],
      isVerification: dto.isVerification ?? false,
      price: dto.price ?? '',
      roomsCount: dto.roomsCount ?? '',
      area: dto.area ?? '',
      floor: dto.floor ?? 0,
      totalFloor: dto.totalFloor ?? 0,
      address: dto.address ?? '',
      name: dto.name ?? '',
      role: dto.role ?? '',
      publishDate: toFormattedDate(dto.publishDate),
      totalViewers: dto.totalViewers ?? '',
      layout: _parseEnum(ApartmentLayout.values, dto.layout),
      renovation: _parseEnum(RenovationType.values, dto.renovation),
      elevatorType: _parseEnum(ElevatorType.values, dto.elevatorType),
      furnitureType: _parseEnum(FurnitureType.values, dto.furnitureType),
      balconyType: _parseEnum(BalconyType.values, dto.balconyType),
      stoveType: _parseEnum(StoveType.values, dto.stoveType),
      dealGoal: _parseEnum(DealGoal.values, dto.dealGoal),
      rentTerm: _parseEnum(RentalConditions.values, dto.rentTerm),
      whoToRent: (dto.whoToRent ?? const [])
          .map((e) => _parseEnum(WhoToRent.values, e))
          .whereType<WhoToRent>()
          .toList(),
      prepaymentType: _parseEnum(PrepaymentType.values, dto.prepaymentType),
      rentalPeriod: _parseEnum(RentalPeriod.values, dto.rentalPeriod),
      deposit: dto.deposit ?? '',
      amenities: (dto.amenities ?? const [])
          .map((e) => _parseEnum(ApartmentAmenity.values, e))
          .whereType<ApartmentAmenity>()
          .toList(),
    );
  }

  static ApartamentDto toDto(ApartamentModel model) {
    return ApartamentDto(
      id: model.id,
      title: model.title,
      description: model.description,
      imageUrls: model.imageUrls,
      isVerification: model.isVerification,
      price: model.price,
      roomsCount: model.roomsCount,
      area: model.area,
      floor: model.floor,
      totalFloor: model.totalFloor,
      address: model.address,
      name: model.name,
      role: model.role,
      publishDate: model.publishDate,
      totalViewers: model.totalViewers,
      layout: model.layout?.name,
      renovation: model.renovation?.name,
      elevatorType: model.elevatorType?.name,
      furnitureType: model.furnitureType?.name,
      balconyType: model.balconyType?.name,
      stoveType: model.stoveType?.name,
      dealGoal: model.dealGoal?.name,
      rentTerm: model.rentTerm?.name,
      whoToRent: model.whoToRent.map((e) => e.name).toList(),
      prepaymentType: model.prepaymentType?.name,
      rentalPeriod: model.rentalPeriod?.name,
      deposit: model.deposit,
      amenities: model.amenities.map((e) => e.name).toList(),
    );
  }

  static T? _parseEnum<T extends Enum>(List<T> values, String? name) {
    if (name == null) return null;
    try {
      return values.firstWhere((e) => e.name == name);
    } catch (_) {
      return null;
    }
  }

  static String toFormattedDate(String? date) {
    if (date == null) return '';
    try {
      return DateTime.parse(date).toLocal().toString();
    } catch (_) {
      return '';
    }
  }
}
