import 'package:roomate/data/datasources/apartaments_data_source.dart';
import 'package:roomate/data/dto/ad_form_options/ad_form_options_dto.dart';
import 'package:roomate/data/dto/apartaments/apartament_dto.dart';
import 'package:roomate/data/dto/apartaments/filter_dto.dart';
import 'package:roomate/data/mappers/ad_form_mapper.dart';
import 'package:roomate/data/mappers/filter_mapper.dart';
import 'package:roomate/domain/models/ad_form/ad_form_options_model.dart';
import 'package:roomate/domain/models/apartaments/apartament_filter.dart';
import 'package:roomate/domain/models/filter/filter_model.dart';
import 'package:roomate/shared/mocks/apartament_filters_mock.dart';
import 'package:roomate/shared/mocks/apartaments_mock.dart';
import 'package:roomate/shared/mocks/create_ad.mock.dart';

mixin ApartamentsMockDataSource implements ApartamentsDataSource {
  @override
  Future<List<ApartamentDto>> fetchApartaments(ApartamentFilter filter) async {
    // Имитируем задержку сети
    await Future.delayed(const Duration(milliseconds: 300));

    final allApartments = ApartmentsMockJson.fetchApartments
        .map((json) => ApartamentDto.fromJson(json))
        .toList();

    // Маппинг ID для фильтрации (согласно ApartmentFiltersMockJson)
    final categoryMap = {1: "Снять", 2: "Обменять"};
    final roomsCountMap = {21: "Студия", 22: "1", 23: "2", 24: "3", 25: "4+"};

    // Фильтрация
    return allApartments.where((apt) {
      // Фильтр по городу
      if (!apt.address.toLowerCase().contains(filter.city.toLowerCase())) {
        return false;
      }

      // Фильтр по категории
      if (filter.categoryId != null) {
        final categoryTitle = categoryMap[filter.categoryId];
        if (categoryTitle == "Снять" && apt.dealGoal != "rent") return false;
        if (categoryTitle == "Обменять" && apt.dealGoal != "exchange") return false;
      }

      // Фильтр по виду недвижимости
      if (filter.propertyTypeIds.isNotEmpty) {
        // В нашем моке тип недвижимости неявно задан через заголовок или другие поля
        // Для простоты пока оставим как есть, так как в DTO нет явного поля propertyType
      }

      // Фильтр по количеству комнат
      if (filter.roomsCountIds.isNotEmpty) {
        final selectedRoomsTitles = filter.roomsCountIds
            .map((id) => roomsCountMap[id])
            .whereType<String>()
            .toList();
        if (!selectedRoomsTitles.contains(apt.roomsCount)) return false;
      }

      // Фильтр по цене
      final price = int.tryParse(apt.price.replaceAll(' ', '')) ?? 0;
      if (filter.minPrice != null && price < filter.minPrice!) return false;
      if (filter.maxPrice != null && price > filter.maxPrice!) return false;

      return true;
    }).toList();
  }

  @override
  Future<FilterModel> fetchFilterTags() async {
    await Future.delayed(const Duration(milliseconds: 100));
    final json = ApartmentFiltersMockJson.fetchFilterTags;
    return FilterDto.fromJson(json).toModel();
  }

  @override
  Future<AdFormOptionsModel> fetchAdFormOptions() async {
    await Future.delayed(const Duration(milliseconds: 100));
    final json = CreateAdMockJson.fetchTagsResponse;
    return AdFormOptionsDto.fromJson(json).toModel();
  }
}
