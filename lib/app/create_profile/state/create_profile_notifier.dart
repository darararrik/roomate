import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

part 'create_profile_notifier.g.dart';

@riverpod
class CreateProfileNotifier extends _$CreateProfileNotifier {
  @override
  UserState build() {
    return UserState();
  }

  void onChangedFirstName(String value) {
    state = state.copyWith(firstName: value);
  }

  void onChangedLastName(String value) {
    state = state.copyWith(lastName: value);
  }

  void onChangedAge(String value) {
    state = state.copyWith(age: value);
  }

  void setGender(GenderEnum gender) {
    state = state.copyWith(gender: gender);
    clearGenderError();
  }

  /// Navigation

  Future<void> onNextStep(TabsRouter tabsRouter) async {
    switch (tabsRouter.activeIndex) {
      case 0:
        _validate();
        if (!state.isFormValid) return;
        final success = await createProfile();
        if (success) {
          tabsRouter.setActiveIndex(1);
        } else {
          //TODO: Показать ошибку (через state или через event/scaffold)
        }
        break;
      case 1:
        ref.nav.push(const ProfileSummaryRoute());
        break;
    }
  }

  void openUserPreferences() => ref.nav.push(const UserPreferencesPageViewRoute());

  Future<bool> createProfile() async {
    final success = await ref
        .read(globalProfileProvider.notifier)
        .updateProfile(
          firstName: state.firstName,
          lastName: state.lastName,
          age: int.tryParse(state.age),
          gender: state.gender,
        );
    return success;
  }

  void onPop(TabsRouter tabsRouter) {
    final nextIndex = tabsRouter.activeIndex - 1;
    if (nextIndex >= 0) {
      tabsRouter.setActiveIndex(nextIndex);
    } else {
      ref.nav.pop();
    }
  }

  // void toggleTagSelection(int tagId) {
  //   // Копируем текущий список тегов
  //   final updatedTags = state.tags.map((group) {
  //     // Если твои теги приходят сгруппированными, ищем в них
  //     final newTags = group.tags.map((tag) {
  //       if (tag.id == tagId) {
  //         return tag.copyWith(isSelected: !tag.isSelected);
  //       }
  //       return tag;
  //     }).toList();

  //     return group.copyWith(tags: newTags);
  //   }).toList();

  //   state = state.copyWith(tags: updatedTags);
  // }

  // Future<void> fetchTagsAboutSelf() async {
  //   state = state.copyWith(isLoading: true);
  //   final result = await ref.read(profileRepositoryProvider).fetchTagsAboutSelf();
  //   result.fold(
  //     (l) => state = state.copyWith(isLoading: false),
  //     (r) => state = state.copyWith(tags: r, isLoading: false),
  //   );
  // }

  void onSkip() => ref.nav.replaceAll([const MainFlowRoute()]);

  String titleButton(TabsRouter tabsRouter) {
    return tabsRouter.activeIndex == 2 ? ref.l10n.confirmThroughGosuslugi : ref.l10n.next;
  }

  /// validation
  void _validate() {
    String fNameErr = '';
    String lNameErr = '';
    String ageErr = '';
    String genderErr = '';
    if (state.firstName.trim().isEmpty) {
      fNameErr = 'Имя обязательно';
    }

    if (state.lastName.trim().isEmpty) {
      lNameErr = 'Фамилия обязательна';
    }

    final ageInt = int.tryParse(state.age);
    if (state.age.isEmpty) {
      ageErr = 'Заполните поле';
    } else if (ageInt == null || ageInt < 18 || ageInt > 100) {
      ageErr = 'Введите корректный возраст (18-100)';
    }

    if (state.gender == null) {
      genderErr = 'Пол обязателен';
    }

    state = state.copyWith(
      firstNameError: fNameErr,
      lastNameError: lNameErr,
      ageError: ageErr,
      genderError: genderErr,
      isFormValid: fNameErr.isEmpty && lNameErr.isEmpty && ageErr.isEmpty && genderErr.isEmpty,
    );
  }

  void clearFirstNameError() {
    if (state.firstNameError.isNotEmpty) {
      state = state.copyWith(firstNameError: '');
    }
  }

  void clearLastNameError() {
    if (state.lastNameError.isNotEmpty) {
      state = state.copyWith(lastNameError: '');
    }
  }

  void clearAgeError() {
    if (state.ageError.isNotEmpty) {
      state = state.copyWith(ageError: '');
    }
  }

  void clearGenderError() {
    if (state.genderError.isNotEmpty) {
      state = state.copyWith(genderError: '');
    }
  }

  void clearError() {
    clearFirstNameError();
    clearLastNameError();
    clearAgeError();
    clearGenderError();
  }
}
