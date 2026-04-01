import 'package:auto_route/auto_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/domain/enums/currency_enum.dart';
import 'package:roomate/domain/models/create_ad_request.dart';
import 'package:roomate/domain/models/create_ad_tag_sections.dart';
import 'package:roomate/domain/models/tag_model.dart';
import 'package:roomate/domain/repository/create_ad_repository.dart';
import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_state.dart';
import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_tag_type_ids.dart';
import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_taxonomy_notifier.dart';
import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_taxonomy_state.dart';
import 'package:roomate/presentation/di/providers.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/extensions.dart';
import 'package:roomate/state/global_profile/global_profile_notifier.dart';

part 'create_ad_notifier.g.dart';

enum _TagSelectionMode { single, multi }

@riverpod
class CreateAdNotifier extends _$CreateAdNotifier {
  late final ICreateAdRepository _repository;

  static const Map<int, _TagSelectionMode> _modeByType = <int, _TagSelectionMode>{
    CreateAdTagTypeIds.goal: _TagSelectionMode.single,
    CreateAdTagTypeIds.term: _TagSelectionMode.single,
    CreateAdTagTypeIds.whoToRent: _TagSelectionMode.multi,
    CreateAdTagTypeIds.premisesType: _TagSelectionMode.single,
    CreateAdTagTypeIds.propertyType: _TagSelectionMode.single,
    CreateAdTagTypeIds.roomCount: _TagSelectionMode.single,
    CreateAdTagTypeIds.layout: _TagSelectionMode.single,
    CreateAdTagTypeIds.renovation: _TagSelectionMode.single,
    CreateAdTagTypeIds.elevators: _TagSelectionMode.single,
    CreateAdTagTypeIds.balconies: _TagSelectionMode.single,
    CreateAdTagTypeIds.furniture: _TagSelectionMode.single,
    CreateAdTagTypeIds.amenities: _TagSelectionMode.multi,
    CreateAdTagTypeIds.bathroom: _TagSelectionMode.multi,
    CreateAdTagTypeIds.appliances: _TagSelectionMode.multi,
    CreateAdTagTypeIds.stove: _TagSelectionMode.single,
    CreateAdTagTypeIds.currency: _TagSelectionMode.single,
    CreateAdTagTypeIds.prepayment: _TagSelectionMode.single,
    CreateAdTagTypeIds.rentalPeriod: _TagSelectionMode.single,
    CreateAdTagTypeIds.rentalConditions: _TagSelectionMode.multi,
    CreateAdTagTypeIds.contactMethod: _TagSelectionMode.single,
  };

  @override
  CreateAdState build() {
    _repository = ref.read(createAdRepositoryProvider);
    ref.listen(globalProfileProvider, (prev, next) {
      final newPhone = next.value?.phone;
      if (newPhone != null && newPhone.isNotEmpty) {
        state = state.copyWith(mainPhone: newPhone);
      }
    });
    final initialPhone = ref.read(globalProfileProvider).value?.phone ?? '';
    return CreateAdState(mainPhone: initialPhone);
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

  void nextStep(TabsRouter tabsRouter) {
    final nextIndex = tabsRouter.activeIndex + 1;
    if (tabsRouter.activeIndex == 11) {
      _repository.createAd(_toCreateAdRequest());
    }
    if (nextIndex < tabsRouter.pageCount) {
      tabsRouter.setActiveIndex(nextIndex);
    } else {
      ref.nav.replaceAll([const MainFlowRoute()]);
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

  Set<int> selectedIdsForType(int typeId) {
    return (state.selectedTagIdsByType[typeId] ?? const <int>[]).toSet();
  }

  String selectedSingleTitle(int typeId) {
    final selected = state.selectedTagIdsByType[typeId] ?? const <int>[];
    if (selected.isEmpty) {
      return '';
    }

    final taxonomy = ref.read(createAdTaxonomyProvider);
    return _tagTitleById(typeId, selected.first, taxonomy) ?? '';
  }

  List<String> selectedMultiTitles(int typeId) {
    final selected = state.selectedTagIdsByType[typeId] ?? const <int>[];
    if (selected.isEmpty) {
      return const <String>[];
    }

    final taxonomy = ref.read(createAdTaxonomyProvider);
    return selected
        .map((id) => _tagTitleById(typeId, id, taxonomy))
        .whereType<String>()
        .toList(growable: false);
  }

  void updateTag(int typeId, int tagId) {
    final taxonomy = ref.read(createAdTaxonomyProvider);
    if (_tagTitleById(typeId, tagId, taxonomy) == null) {
      return;
    }

    final mode = _modeByType[typeId] ?? _TagSelectionMode.single;
    final current = selectedIdsForType(typeId);

    switch (mode) {
      case _TagSelectionMode.single:
        current
          ..clear()
          ..add(tagId);
        break;
      case _TagSelectionMode.multi:
        if (current.contains(tagId)) {
          current.remove(tagId);
        } else {
          current.add(tagId);
        }
        break;
    }

    final nextSelected = Map<int, List<int>>.from(state.selectedTagIdsByType);
    if (current.isEmpty) {
      nextSelected.remove(typeId);
    } else {
      nextSelected[typeId] = current.toList(growable: false);
    }

    var nextCurrency = state.selectedCurrency;
    if (typeId == CreateAdTagTypeIds.currency) {
      final selectedTitle = _selectedSingleTitleFrom(nextSelected, typeId, taxonomy);
      if (selectedTitle.isNotEmpty) {
        nextCurrency = Currency.fromTitle(selectedTitle);
      }
    }

    state = state.copyWith(selectedTagIdsByType: nextSelected, selectedCurrency: nextCurrency);
  }

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

  CreateAdRequest _toCreateAdRequest() {
    return CreateAdRequest(
      title: state.title,
      description: state.description,
      address: state.address,
      mainPhone: state.mainPhone,
      additionalNumber: state.additionalNumber,
      currency: state.selectedCurrency.name,
      cost: state.cost,
      deposit: state.deposit,
      apartmentArea: state.apartmentArea,
      floor: state.floor,
      totalFloors: state.totalFloors,
      selectedTagsByType: state.selectedTagIdsByType,
    );
  }

  String _selectedSingleTitleFrom(
    Map<int, List<int>> selectedByType,
    int typeId,
    CreateAdTaxonomyState taxonomy,
  ) {
    final selected = selectedByType[typeId] ?? const <int>[];
    if (selected.isEmpty) {
      return '';
    }

    return _tagTitleById(typeId, selected.first, taxonomy) ?? '';
  }

  String? _tagTitleById(int typeId, int tagId, CreateAdTaxonomyState taxonomy) {
    final group = _groupByTypeId(typeId, taxonomy);
    if (group == null) {
      return null;
    }

    for (final tag in group.tags) {
      if (tag.id == tagId) {
        return tag.title;
      }
    }

    return null;
  }

  TagGroupModel? _groupByTypeId(int typeId, CreateAdTaxonomyState taxonomy) {
    for (final group in _allGroups(taxonomy)) {
      if (int.tryParse(group.groupId) == typeId) {
        return group;
      }
    }

    return null;
  }

  Iterable<TagGroupModel> _allGroups(CreateAdTaxonomyState taxonomy) sync* {
    yield* taxonomy.rentTypeGroups;
    yield taxonomy.premisesTypeGroup;
    yield taxonomy.propertyTypeGroup;
    yield* taxonomy.apartmentPropertiesGroups;
    yield* taxonomy.featuresGroups;
    yield* taxonomy.thingsGroups;
    yield* taxonomy.dealTermsGroups;
    yield taxonomy.contactInfoGroup;
  }
}
