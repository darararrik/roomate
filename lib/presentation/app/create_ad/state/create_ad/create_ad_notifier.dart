import 'package:auto_route/auto_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/domain/enums/currency_enum.dart';
import 'package:roomate/domain/models/tag_model.dart';
import 'package:roomate/domain/repository/create_ad_repository.dart';
import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_state.dart';
import 'package:roomate/presentation/di/providers.dart';
import 'package:roomate/presentation/utils/extensions.dart';

part 'create_ad_notifier.g.dart';

// TODO: ГДЕ ТО В БУДУЩЕМ ПЕРЕПИСАТЬ
// Я заманался переписывать это по кд
// потому что дизайн все время меняется + не понятно как вообще такое реализовывать + с точки зрения данныхА
@riverpod
class CreateAdNotifier extends _$CreateAdNotifier {
  @override
  CreateAdState build() {
    _repository = ref.read(createAdRepositoryProvider);

    return CreateAdState(
      rentTypeTags: _repository.getRentTypeTags(),
      roomTypeTags: _repository.getRoomTypeTags(),
      propertyTypeTags: _repository.getPropertyTypeTags(),
      propertiesApartmentTags: _repository.getPropertiesApartmentTags(),
      featuresFirstTags: _repository.getFeaturesFirstTags(),
      featuresSecondTags: _repository.getFeaturesSecondTags(),
      dealTermsTags: _repository.getDealTermsTags(),
      contactInfoTags: _repository.getContactInfoTags(),
    );
  }

  late final ICreateAdRepository _repository;

  void updateRentTypeTags({
    required String categoryTitle,
    required String tag,
    required bool isSelected,
  }) {
    _updateTags(
      currentTags: state.rentTypeTags,
      categoryTitle: categoryTitle,
      tagTitle: tag,
      isSelected: isSelected,
      isRadio: true,
      onUpdate: (newTags) => state = state.copyWith(rentTypeTags: newTags),
    );
  }

  void updateRoomTypeTags({
    required String categoryTitle,
    required String tag,
    required bool isSelected,
  }) {
    _updateTags(
      currentTags: state.roomTypeTags,
      categoryTitle: categoryTitle,
      tagTitle: tag,
      isSelected: isSelected,
      isRadio: true,
      onUpdate: (newTags) => state = state.copyWith(roomTypeTags: newTags),
    );
  }

  void updatePropertyTypeTags({
    required String categoryTitle,
    required String tag,
    required bool isSelected,
  }) {
    _updateTags(
      currentTags: state.propertyTypeTags,
      categoryTitle: categoryTitle,
      tagTitle: tag,
      isSelected: isSelected,
      isRadio: true,
      onUpdate: (newTags) => state = state.copyWith(propertyTypeTags: newTags),
    );
  }

  void updatePropertiesApartmentTags({
    required String categoryTitle,
    required String tag,
    required bool isSelected,
  }) {
    _updateTags(
      currentTags: state.propertiesApartmentTags,
      categoryTitle: categoryTitle,
      tagTitle: tag,
      isSelected: isSelected,
      isRadio: true,
      onUpdate: (newTags) => state = state.copyWith(propertiesApartmentTags: newTags),
    );
  }

  void updateFeaturesFirstTags({
    required String categoryTitle,
    required String tag,
    required bool isSelected,
    bool isRadio = true,
  }) {
    _updateTags(
      currentTags: state.featuresFirstTags,
      categoryTitle: categoryTitle,
      tagTitle: tag,
      isSelected: isSelected,
      isRadio: isRadio,
      onUpdate: (newTags) => state = state.copyWith(featuresFirstTags: newTags),
    );
  }

  void updateFeaturesSecondTags({
    required String categoryTitle,
    required String tag,
    required bool isSelected,
    bool isRadio = true,
  }) {
    _updateTags(
      currentTags: state.featuresSecondTags,
      categoryTitle: categoryTitle,
      tagTitle: tag,
      isSelected: isSelected,
      isRadio: isRadio,
      onUpdate: (newTags) => state = state.copyWith(featuresSecondTags: newTags),
    );
  }

  void updateDealTermsTags({
    required String categoryTitle,
    required String tag,
    required bool isSelected,
    bool isRadio = true,
  }) {
    _updateTags(
      currentTags: state.dealTermsTags,
      categoryTitle: categoryTitle,
      tagTitle: tag,
      isSelected: isSelected,
      isRadio: isRadio,
      onUpdate: (newTags) => state = state.copyWith(dealTermsTags: newTags),
    );
  }

  void updateContactInfoTags({
    required String categoryTitle,
    required String tag,
    required bool isSelected,
    bool isRadio = true,
  }) {
    _updateTags(
      currentTags: state.contactInfoTags,
      categoryTitle: categoryTitle,
      tagTitle: tag,
      isSelected: isSelected,
      isRadio: isRadio,
      onUpdate: (newTags) => state = state.copyWith(contactInfoTags: newTags),
    );
  }

  void _updateTags({
    required List<TagGroupModel> currentTags,
    required String categoryTitle,
    required String tagTitle,
    required bool isSelected,
    required bool isRadio,
    required void Function(List<TagGroupModel>) onUpdate,
  }) {
    final stepTags = List<TagGroupModel>.from(currentTags);
    final categoryIndex = stepTags.indexWhere((element) => element.groupTitle == categoryTitle);

    if (categoryIndex == -1) return;

    final category = stepTags[categoryIndex];
    final List<TagModel> tags = List.from(category.tags);
    final tagIndex = tags.indexWhere((element) => element.title == tagTitle);

    if (tagIndex == -1) return;

    if (isRadio) {
      if (isSelected) {
        for (int i = 0; i < tags.length; i++) {
          tags[i] = tags[i].copyWith(isSelected: i == tagIndex);
        }
      } else {
        tags[tagIndex] = tags[tagIndex].copyWith(isSelected: false);
      }
    } else {
      tags[tagIndex] = tags[tagIndex].copyWith(isSelected: isSelected);
    }

    stepTags[categoryIndex] = category.copyWith(tags: tags);
    onUpdate(stepTags);
  }

  void updateCurrency(String currencyTitle) {
    state = state.copyWith(selectedCurrency: Currency.fromTitle(currencyTitle));
  }

  void updateCost(String cost) {
    final costValue = double.tryParse(cost);
    if (costValue == null) return;
    state = state.copyWith(cost: costValue);
  }

  void updateDeposit(String deposit) {
    final depositValue = double.tryParse(deposit);
    if (depositValue == null) return;
    state = state.copyWith(deposit: depositValue);
  }

  bool isStepValueSelected(List<TagGroupModel> tags) {
    return tags.any((group) => group.tags.any((tag) => tag.isSelected));
  }

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

  // Метод для перехода вперед
  void nextStep(TabsRouter tabsRouter) {
    final nextIndex = tabsRouter.activeIndex + 1;
    if (nextIndex < tabsRouter.pageCount) {
      tabsRouter.setActiveIndex(nextIndex);
    } else {
      // TODO: Реализовать переход куда то
    }
  }

  // Метод для перехода назад
  void previousStep(TabsRouter tabsRouter) {
    final prevIndex = tabsRouter.activeIndex - 1;
    if (prevIndex >= 0) {
      tabsRouter.setActiveIndex(prevIndex);
    } else {
      if (ref.nav.canPop()) {
        ref.nav.pop();
      }
    }
  }

  void updateApartmentArea(String value) {
    final area = double.tryParse(value);
    if (area == null || area <= 0) return;
    state = state.copyWith(apartmentArea: area);
  }

  void updateFloor(String value) {
    final floor = int.tryParse(value);
    if (floor == null || floor <= 0) return;
    state = state.copyWith(floor: floor);
  }

  void updateTotalFloors(String value) {
    final totalFloors = int.tryParse(value);
    if (totalFloors == null || totalFloors <= 0) return;
    state = state.copyWith(totalFloors: totalFloors);
  }

  void selectAdress(String address) {
    state = state.copyWith(address: address);
  }

  void setTitle(String value) {}

  void setDescription(String value) {}
}
