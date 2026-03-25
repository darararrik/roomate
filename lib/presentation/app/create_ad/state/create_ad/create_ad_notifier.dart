import 'package:auto_route/auto_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/domain/enums/currency_enum.dart';
import 'package:roomate/domain/models/tag_model.dart';
import 'package:roomate/domain/repository/create_ad_repository.dart';
import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_state.dart';
import 'package:roomate/presentation/di/providers.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/extensions.dart';

part 'create_ad_notifier.g.dart';

@riverpod
class CreateAdNotifier extends _$CreateAdNotifier {
  late final ICreateAdRepository _repository;

  @override
  CreateAdState build() {
    _repository = ref.read(createAdRepositoryProvider);
    return CreateAdState(
      rentTypeGroups: _repository.getRentTypeTags(),
      premisesTypeGroup: _repository.getPremisesTypeTags(),
      propertyTypeGroup: _repository.getPropertyTypeTags(),
      apartmentPropertiesGroups: _repository.getPropertiesApartmentTags(),
      featuresGroups: _repository.getFeatures(),
      thingsGroups: _repository.getThings(),
      dealTermsGroups: _repository.getDealTermsTags(),
      contactInfoGroup: _repository.getContactInfoTags(),
    );
  }

  // --- Навигация ---

  String getStepTitle(int index) {
    return switch (index) {
      0 || 1 || 2 => ref.l10n.newAdvertisement,
      3 => ref.l10n.apartmentRent,
      4 => ref.l10n.propertyData,
      5 => ref.l10n.photoAndVideo,
      6 => ref.l10n.apartmentFeatures,
      7 => ref.l10n.apartmentItems,
      8 => ref.l10n.dealTerms,
      9 => ref.l10n.advertisementDescription,
      10 => ref.l10n.contacts,
      11 => ref.l10n.checkAdvertisement,
      _ => ref.l10n.newAdvertisement,
    };
  }

  void nextStep(TabsRouter tabsRouter) {
    final nextIndex = tabsRouter.activeIndex + 1;
    if (nextIndex < tabsRouter.pageCount) {
      tabsRouter.setActiveIndex(nextIndex);
    } else {
      ref.nav.replace(const MainFlowRoute());
    }
  }

  void previousStep(TabsRouter tabsRouter) {
    final prevIndex = tabsRouter.activeIndex - 1;
    if (prevIndex >= 0) {
      tabsRouter.setActiveIndex(prevIndex);
    } else if (ref.nav.canPop()) {
      ref.nav.pop();
    }
  }

  void updateTag(String groupId, String tagTitle) {
    final isMulti = _multiSelectGroups.contains(groupId);

    state = state.copyWith(
      rentTypeGroups: _updateInList(state.rentTypeGroups, groupId, tagTitle, isMulti),
      premisesTypeGroup: _updateSingle(state.premisesTypeGroup, groupId, tagTitle, isMulti),
      propertyTypeGroup: _updateSingle(state.propertyTypeGroup, groupId, tagTitle, isMulti),
      apartmentPropertiesGroups: _updateInList(
        state.apartmentPropertiesGroups,
        groupId,
        tagTitle,
        isMulti,
      ),
      featuresGroups: _updateInList(state.featuresGroups, groupId, tagTitle, isMulti),
      thingsGroups: _updateInList(state.thingsGroups, groupId, tagTitle, isMulti),
      dealTermsGroups: _updateInList(state.dealTermsGroups, groupId, tagTitle, isMulti),
      contactInfoGroup: _updateSingle(state.contactInfoGroup, groupId, tagTitle, isMulti),
    );

    _syncWithFields(groupId, tagTitle, isMulti);
  }

  void _syncWithFields(String groupId, String title, bool isMulti) {
    if (isMulti) {
      final currentList = _getMultiListByGroupId(groupId);
      final newList = currentList.contains(title)
          ? currentList.where((t) => t != title).toList()
          : [...currentList, title];
      _updateFieldByGroupId(groupId, newList);
    } else {
      _updateFieldByGroupId(groupId, title);
    }
  }

  void _updateFieldByGroupId(String groupId, dynamic value) {
    state = switch (groupId) {
      'goal' => state.copyWith(goal: value as String),
      'term' => state.copyWith(term: value as String),
      'who_to_rent' => state.copyWith(whoReadyRent: value as List<String>),
      'property_type' => state.copyWith(propertyType: value as String),
      'premises_type' => state.copyWith(premisesType: value as String),
      'room_count' => state.copyWith(roomCount: value as String),
      'layout' => state.copyWith(layout: value as String),
      'renovation' => state.copyWith(renovation: value as String),
      'amenities' => state.copyWith(amenities: value as List<String>),
      'bathroom' => state.copyWith(bathroom: value as List<String>),
      'appliances' => state.copyWith(appliances: value as List<String>),
      'prepayment' => state.copyWith(prepayment: value as String),
      'rental_period' => state.copyWith(rentalPeriod: value as String),
      'rental_conditions' => state.copyWith(rentalConditions: value as List<String>),
      'contact_method' => state.copyWith(contactMethod: value as String),
      _ => state,
    };
  }

  /// Получение текущего списка для мульти-выбора по ID группы
  List<String> _getMultiListByGroupId(String groupId) {
    return switch (groupId) {
      'who_to_rent' => state.whoReadyRent,
      'amenities' => state.amenities,
      'bathroom' => state.bathroom,
      'appliances' => state.appliances,
      'rental_conditions' => state.rentalConditions,
      _ => [],
    };
  }

  // --- Вспомогательные методы обновления моделей TagGroupModel ---

  TagGroupModel _updateSingle(TagGroupModel group, String targetId, String title, bool isMulti) {
    if (group.groupId != targetId) return group;

    return group.copyWith(
      tags: group.tags.map((t) {
        if (t.title == title) {
          return t.copyWith(isSelected: isMulti ? !t.isSelected : true);
        }
        return isMulti ? t : t.copyWith(isSelected: false);
      }).toList(),
    );
  }

  List<TagGroupModel> _updateInList(
    List<TagGroupModel> list,
    String targetId,
    String title,
    bool isMulti,
  ) {
    return list.map((g) => _updateSingle(g, targetId, title, isMulti)).toList();
  }

  // --- Прямые обновления полей (текст, числа) ---

  void updateCurrency(String currencyTitle) {
    state = state.copyWith(selectedCurrency: Currency.fromTitle(currencyTitle));
  }

  void updateCost(String cost) {
    state = state.copyWith(cost: double.tryParse(cost) ?? 0);
  }

  void updateDeposit(String deposit) {
    state = state.copyWith(deposit: double.tryParse(deposit) ?? 0);
  }

  void updateApartmentArea(String value) {
    state = state.copyWith(apartmentArea: double.tryParse(value) ?? 0);
  }

  void updateFloor(String value) {
    state = state.copyWith(floor: int.tryParse(value) ?? 0);
  }

  void updateTotalFloors(String value) {
    state = state.copyWith(totalFloors: int.tryParse(value) ?? 0);
  }

  void selectAdress(String address) => state = state.copyWith(address: address);

  void setTitle(String value) => state = state.copyWith(title: value);

  void setDescription(String value) => state = state.copyWith(description: value);

  void updateAdditionalNumber(String value) => state = state.copyWith(additionalNumber: value);

  // Константа для определения типа выбора (Multi vs Radio)
  static const _multiSelectGroups = {
    'who_to_rent',
    'amenities',
    'bathroom',
    'appliances',
    'rental_conditions',
  };
}
