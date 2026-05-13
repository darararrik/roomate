import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/app/neighbours/notifier/groups_notifier.dart';

part 'who_search_filter_notifier.g.dart';

@Riverpod(keepAlive: true)
class WhoSearchFilterNotifier extends _$WhoSearchFilterNotifier {
  @override
  WhoSearchFilterModel build() => const WhoSearchFilterModel();

  void setGender(GenderEnum? value) {
    state = state.copyWith(gender: value);
  }

  void setAgeRange({required int minAge, required int maxAge}) {
    state = state.copyWith(minAge: minAge, maxAge: maxAge);
  }

  void setMinGroupSize(int? value) {
    state = state.copyWith(minGroupSize: value);
  }

  void setMaxGroupSize(int? value) {
    state = state.copyWith(maxGroupSize: value);
  }

  void setSearchQuery(String value) {
    state = state.copyWith(searchQuery: value);
  }

  void setChildrenAllowed(bool value) {
    state = state.copyWith(childrenAllowed: value);
  }

  void setPartnerAllowed(bool value) {
    state = state.copyWith(partnerAllowed: value);
  }

  void setPetsAllowed(bool value) {
    state = state.copyWith(petsAllowed: value);
  }

  void setSmokingAllowed(bool value) {
    state = state.copyWith(smokingAllowed: value);
  }

  void reset() {
    state = const WhoSearchFilterModel();
  }

  Future<void> apply() {
    return ref.read(groupsProvider.notifier).fetchWithFilter(state);
  }
}
