import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/notifier/global_profile/global_profile_notifier.dart';
import 'package:roomate/notifier/navigation/navigation_provider.dart';
import 'package:roomate/utils/extensions.dart';

part 'profile_edit_notifier.freezed.dart';
part 'profile_edit_notifier.g.dart';

@riverpod
class ProfileEditNotifier extends _$ProfileEditNotifier {
  @override
  ProfileEditState build() {
    final profile =
        ref.read(globalProfileProvider).value ?? ProfileModel.guest();
    return ProfileEditState.fromProfile(profile);
  }

  void changeFirstName(String value) {
    state = state.copyWith(firstName: value, firstNameError: '');
  }

  void changeLastName(String value) {
    state = state.copyWith(lastName: value, lastNameError: '');
  }

  void changeGender(GenderEnum gender) {
    state = state.copyWith(gender: gender);
  }

  Future<void> save() async {
    final firstName = state.firstName.trim();
    final lastName = state.lastName.trim();
    final locale = ref.l10n;

    state = state.copyWith(
      firstNameError: firstName.isEmpty
          ? locale.profileEditFirstNameRequired
          : '',
      lastNameError: lastName.isEmpty ? locale.profileEditLastNameRequired : '',
    );

    if (firstName.isEmpty || lastName.isEmpty || !state.hasChanges) return;

    state = state.copyWith(isSaving: true);

    final error = await ref
        .read(globalProfileProvider.notifier)
        .updateProfile(
          firstName: firstName,
          lastName: lastName,
          gender: state.gender,
          showLoading: false,
        );

    if (error != null) {
      state = state.copyWith(isSaving: false);

      final message = error.messages.isNotEmpty
          ? error.messages
          : locale.profileEditSaveFailed;
      ref.read(navigationServiceProvider).showSnackBar(message: message);
      return;
    }

    final savedProfile = ref.read(globalProfileProvider).value;
    if (savedProfile != null) {
      state = ProfileEditState.fromProfile(savedProfile);
    } else {
      state = state.copyWith(isSaving: false);
    }
  }
}

@freezed
sealed class ProfileEditState with _$ProfileEditState {
  const factory ProfileEditState({
    required String initialFirstName,
    required String initialLastName,
    required GenderEnum initialGender,
    required String firstName,
    required String lastName,
    required int age,
    required GenderEnum gender,
    @Default('') String firstNameError,
    @Default('') String lastNameError,
    @Default(false) bool isSaving,
  }) = _ProfileEditState;

  const ProfileEditState._();

  factory ProfileEditState.fromProfile(ProfileModel profile) {
    return ProfileEditState(
      initialFirstName: profile.firstName,
      initialLastName: profile.lastName,
      initialGender: profile.gender,
      firstName: profile.firstName,
      lastName: profile.lastName,
      age: profile.age,
      gender: profile.gender,
    );
  }

  bool get hasChanges =>
      firstName.trim() != initialFirstName ||
      lastName.trim() != initialLastName ||
      gender != initialGender;

  bool get canSave => hasChanges && !isSaving;
}
