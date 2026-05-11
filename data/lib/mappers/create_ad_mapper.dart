import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

@BackendOnly('Maps create-ad form data into temporary backend mock contracts.')
abstract class CreateAdFormMapper {
  static CreateAdFormRequestData toDto(CreateAdFormModel model) {
    return CreateAdFormRequestData(
      rentGoalId: model.rentGoalId,
      rentPeriodId: model.rentPeriodId,
      whoCanRentIds: model.whoCanRentIds,
      premisesTypeId: model.premisesTypeId,
      propertyTypeId: model.propertyTypeId,
      roomsCountId: model.roomsCountId,
      layoutId: model.layoutId,
      renovationId: model.renovationId,
      elevatorsId: model.elevatorsId,
      balconiesId: model.balconiesId,
      furnitureId: model.furnitureId,
      amenitiesIds: model.amenitiesIds,
      bathroomIds: model.bathroomIds,
      appliancesIds: model.appliancesIds,
      stoveId: model.stoveId,
      currencyId: model.currencyId,
      prepaymentId: model.prepaymentId,
      rentDurationId: model.rentDurationId,
      rentConditionsIds: model.rentConditionsIds,
      contactMethodId: model.contactMethodId,
      selectedCurrency: model.selectedCurrency,
      cost: model.cost,
      deposit: model.deposit,
      apartmentArea: model.apartmentArea,
      floor: model.floor,
      totalFloors: model.totalFloors,
      address: _buildAddress(
        selectedStreetId: model.selectedStreetId,
        fallbackDistrict: model.address,
        apartmentNumber: model.apartmentNumber,
      ),
      apartmentNumber: model.apartmentNumber,
      title: model.title,
      description: model.description,
      mainPhone: model.mainPhone,
      additionalNumber: model.additionalNumber,
    );
  }

  static ApartamentData toApartamentDto(
    CreateAdFormRequestData request, {
    required String id,
    required String ownerName,
    String role = 'Собственник',
  }) {
    final whoToRent = request.whoCanRentIds ?? const <int>{};
    final whoToRentNames = whoToRent.map(_mapWhoToRent).whereType<String>().toList();

    final amenityNames = <String>{
      ...(request.amenitiesIds ?? const <int>{}).map(_mapAmenity).whereType<String>(),
      ...(request.bathroomIds ?? const <int>{}).map(_mapAmenity).whereType<String>(),
      ...(request.appliancesIds ?? const <int>{}).map(_mapAmenity).whereType<String>(),
      ...(request.rentConditionsIds ?? const <int>{}).map(_mapAmenity).whereType<String>(),
    }.toList();

    return ApartamentData(
      id: id,
      title: (request.title ?? '').trim().isEmpty
          ? _buildFallbackTitle(request)
          : request.title!.trim(),
      description: (request.description ?? '').trim(),
      imageUrls: const [],
      isVerification: false,
      price: _formatNumber(request.cost ?? 0),
      roomsCount: _findOptionTitle(AdFormOptionKeys.roomsCount, request.roomsCountId) ?? '',
      area: _formatNumber(request.apartmentArea ?? 0),
      floor: request.floor ?? 0,
      totalFloor: request.totalFloors ?? 0,
      address: request.address ?? '',
      name: ownerName,
      role: role,
      publishDate: 'Сегодня',
      totalViewers: '0',
      layout: _mapByTitle(
        _findOptionTitle(AdFormOptionKeys.layout, request.layoutId),
        ApartmentLayout.values,
        (value) => value.title,
      ),
      renovation: _mapByTitle(
        _findOptionTitle(AdFormOptionKeys.renovation, request.renovationId),
        RenovationType.values,
        (value) => value.title,
      ),
      elevatorType: _mapByTitle(
        _findOptionTitle(AdFormOptionKeys.elevators, request.elevatorsId),
        ElevatorType.values,
        (value) => value.title,
      ),
      furnitureType: _mapByTitle(
        _findOptionTitle(AdFormOptionKeys.furniture, request.furnitureId),
        FurnitureType.values,
        (value) => value.title,
      ),
      balconyType: _mapByTitle(
        _findOptionTitle(AdFormOptionKeys.balconies, request.balconiesId),
        BalconyType.values,
        (value) => value.title,
      ),
      stoveType: _mapByTitle(
        _findOptionTitle(AdFormOptionKeys.stove, request.stoveId),
        StoveType.values,
        (value) => value.title,
      ),
      dealGoal: _mapDealGoal(_findOptionTitle(AdFormOptionKeys.rentGoal, request.rentGoalId)),
      rentTerm: _mapByTitle(
        _findOptionTitle(AdFormOptionKeys.rentPeriod, request.rentPeriodId),
        RentalConditions.values,
        (value) => value.title,
      ),
      whoToRent: whoToRentNames,
      prepaymentType: _mapByTitle(
        _findOptionTitle(AdFormOptionKeys.prepayment, request.prepaymentId),
        PrepaymentType.values,
        (value) => value.title,
      ),
      rentalPeriod: _mapByTitle(
        _findOptionTitle(AdFormOptionKeys.rentDuration, request.rentDurationId),
        RentalPeriod.values,
        (value) => value.title,
      ),
      deposit: _formatMoney(request.deposit ?? 0, request.selectedCurrency ?? Currency.rub),
      amenities: amenityNames,
    );
  }

  static String _buildAddress({
    required int selectedStreetId,
    required String fallbackDistrict,
    required int apartmentNumber,
  }) {
    final parts = <String>[];
    if (fallbackDistrict.trim().isNotEmpty) {
      parts.add(fallbackDistrict.trim());
    } else if (selectedStreetId > 0) {
      parts.add('ID $selectedStreetId');
    }

    if (apartmentNumber > 0) {
      parts.add('кв. $apartmentNumber');
    }

    return parts.join(', ');
  }

  static String _buildFallbackTitle(CreateAdFormRequestData request) {
    final propertyType =
        _findOptionTitle(AdFormOptionKeys.propertyType, request.propertyTypeId) ?? 'Объект';
    final roomsCount = _findOptionTitle(AdFormOptionKeys.roomsCount, request.roomsCountId);
    if (roomsCount == null || roomsCount.isEmpty) {
      return propertyType;
    }
    return '$roomsCount $propertyType';
  }

  static String? _findOptionTitle(String key, int? id) {
    if (id == null || id == 0) return null;
    final raw = CreateAdMockJson.fetchTagsResponse[key];
    if (raw is! List) return null;

    for (final item in raw) {
      if (item is Map<String, dynamic> && item['id'] == id) {
        return item['title'] as String?;
      }
    }

    return null;
  }

  static String? _mapDealGoal(String? title) {
    return switch (title) {
      'Аренда' => DealGoal.rent.name,
      'Обмен' => DealGoal.exchange.name,
      _ => null,
    };
  }

  static String? _mapWhoToRent(int id) {
    final title = _findOptionTitle(AdFormOptionKeys.whoCanRent, id);
    return _mapByTitle(title, WhoToRent.values, (value) => value.title);
  }

  static String? _mapAmenity(int id) {
    final title =
        _findOptionTitle(AdFormOptionKeys.amenities, id) ??
        _findOptionTitle(AdFormOptionKeys.bathroom, id) ??
        _findOptionTitle(AdFormOptionKeys.appliances, id) ??
        _findOptionTitle(AdFormOptionKeys.rentConditions, id);

    return _mapByTitle(title, ApartmentAmenity.values, (value) => value.title);
  }

  static String? _mapByTitle<T extends Enum>(
    String? title,
    List<T> values,
    String Function(T value) getTitle,
  ) {
    if (title == null || title.isEmpty) return null;

    for (final value in values) {
      if (getTitle(value) == title) {
        return value.name;
      }
    }

    return null;
  }

  static String _formatNumber(num value) {
    if (value == value.roundToDouble()) {
      return value.toInt().toString();
    }
    return value.toStringAsFixed(1);
  }

  static String _formatMoney(num value, Currency currency) {
    final amount = _formatNumber(value);
    return '$amount ${currency.symbol}';
  }
}
