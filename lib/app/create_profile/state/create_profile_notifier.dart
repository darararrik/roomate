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

  Future<void> submitProfileDetails() async {
    _validate();
    if (!state.isFormValid) return;

    final success = await createProfile();
    if (success) {
      ref.nav.replaceAll([const OnBoardingRoute()]);
    }
  }

  void pop() => ref.nav.pop();

  void openOnbording() => ref.nav.replaceAll([const OnBoardingRoute()]);
  void openUserPreferences() =>
      ref.nav.push(const UserPreferencesPageViewRoute());

  Future<bool> createProfile() async {
    final error = await ref
        .read(globalProfileProvider.notifier)
        .updateProfile(
          firstName: state.firstName,
          lastName: state.lastName,
          age: int.tryParse(state.age),
          gender: state.gender,
        );

    if (error != null) {
      final message = error.messages.isNotEmpty
          ? error.messages
          : 'Не удалось обновить профиль';
      ref.read(navigationServiceProvider).showSnackBar(message: message);
      return false;
    }

    await ref.read(appStatusProvider.notifier).markFormCompleted();
    return true;
  }

  void onSkip() => ref.nav.replaceAll([const MainFlowRoute()]);

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
