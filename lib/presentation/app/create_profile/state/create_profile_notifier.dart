import 'package:auto_route/auto_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/domain/enums/gender_enum.dart';
import 'package:roomate/presentation/app/create_profile/state/user_state.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';

part 'create_profile_notifier.g.dart';

@riverpod
class CreateProfileNotifier extends _$CreateProfileNotifier {
  @override
  UserState build() => UserState();

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

  void onNextStep(TabsRouter tabsRouter) {
    _validate();
    if (!state.isFormValid) return;
    final nextIndex = tabsRouter.activeIndex + 1;
    if (nextIndex < tabsRouter.pageCount) {
      tabsRouter.setActiveIndex(nextIndex);
    }
  }

  void onPop(TabsRouter tabsRouter) {
    final nextIndex = tabsRouter.activeIndex - 1;
    if (nextIndex >= 0) {
      tabsRouter.setActiveIndex(nextIndex);
    } else {
      ref.nav.pop();
    }
  }

  void onSkip() => ref.nav.replace(const MainFlowRoute());

  /// validation
  void _validate() {
    // 1. Подготавливаем локальные переменные для ошибок
    String fNameErr = '';
    String lNameErr = '';
    String ageErr = '';
    String genderErr = '';

    // 2. Проверка Имени
    if (state.firstName.trim().isEmpty) {
      fNameErr = 'Имя обязательно';
    }

    // 3. Проверка Фамилии
    if (state.lastName.trim().isEmpty) {
      lNameErr = 'Фамилия обязательна';
    }

    // 4. Проверка Возраста
    final ageInt = int.tryParse(state.age);
    if (state.age.isEmpty) {
      ageErr = 'Заполните поле';
    } else if (ageInt == null || ageInt < 18 || ageInt > 100) {
      // Исправлено условие: меньше 18 ИЛИ больше 100
      ageErr = 'Введите корректный возраст (18-100)';
    }

    // 5. Проверка Пола
    if (state.gender == null) {
      genderErr = 'Пол обязателен';
    }

    // 6. Обновляем стейт ОДНИМ выстрелом
    // Это важно для производительности и отсутствия лишних перерисовок
    state = state.copyWith(
      firstNameError: fNameErr,
      lastNameError: lNameErr,
      ageError: ageErr,
      genderError: genderErr,
      isFormValid:
          fNameErr.isEmpty &&
          lNameErr.isEmpty &&
          ageErr.isEmpty &&
          genderErr.isEmpty,
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
