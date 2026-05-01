import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/app/user_preferences/state/pref_state.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';
import 'package:shared/shared.dart';

part 'user_pref_notifier.g.dart';

@riverpod
Future<PreferenceTagsCatalogModel> preferenceTagsCatalog(Ref ref) async {
  final result = await ref
      .read(fetchPreferenceTagsCatalogUseCaseProvider)
      .call();
  return result.tags;
}

@riverpod
class UserPrefNotifier extends _$UserPrefNotifier {
  @override
  PrefState build() {
    return const PrefState();
  }

  void _toggleTag(Set<int> currentSet, int id, Function(Set<int>) onUpdate) {
    final newSet = Set<int>.from(currentSet);
    if (newSet.contains(id)) {
      newSet.remove(id);
    } else {
      newSet.add(id);
    }
    onUpdate(newSet);
  }

  void setCommunicationId(int id) {
    state = state.copyWith(communicationId: id, communicationError: '');
  }

  void setSleepId(int id) {
    state = state.copyWith(sleepId: id, sleepError: '');
  }

  void setGuestsId(int id) {
    state = state.copyWith(guestsId: id, guestsError: '');
  }

  void setNoiseLevelId(int id) {
    state = state.copyWith(noiseLevelId: id, noiseLevelError: '');
  }

  void setCleaningId(int id) {
    state = state.copyWith(cleaningId: id, cleaningError: '');
  }

  void setPetsAttitudeId(int id) {
    state = state.copyWith(petsAttitudeId: id, petsAttitudeError: '');
  }

  void setEmploymentId(int id) {
    _toggleTag(state.employmentId, id, (newSet) {
      state = state.copyWith(employmentId: newSet, employmentError: '');
    });
  }

  void setEmploymentIds(Set<int> ids) {
    state = state.copyWith(employmentId: ids, employmentError: '');
  }

  void setBadHabitsId(int id) {
    _toggleTag(state.badHabitsId, id, (newSet) {
      state = state.copyWith(badHabitsId: newSet, badHabitsError: '');
    });
  }

  void setBadHabitsIds(Set<int> ids) {
    state = state.copyWith(badHabitsId: ids, badHabitsError: '');
  }

  void setPetsId(int id) {
    _toggleTag(state.petsId, id, (newSet) {
      state = state.copyWith(petsId: newSet, petsError: '');
    });
  }

  void setPetsIds(Set<int> ids) {
    state = state.copyWith(petsId: ids, petsError: '');
  }

  void onPop(TabsRouter tabsRouter) {
    final nextIndex = tabsRouter.activeIndex - 1;
    if (nextIndex >= 0) {
      tabsRouter.setActiveIndex(nextIndex);
    } else {
      ref.nav.navigate(const OnBoardingRoute());
    }
  }

  Future<void> onNext(TabsRouter tabsRouter) async {
    if (tabsRouter.activeIndex == 0 && !_validateLifestyle()) return;
    if (tabsRouter.activeIndex == 1 && !_validateHousehold()) return;

    final nextIndex = tabsRouter.activeIndex + 1;
    if (nextIndex < tabsRouter.pageCount) {
      tabsRouter.setActiveIndex(nextIndex);
      return;
    }

    final isSaved = await sendSelectedUserPreferences();
    if (!isSaved) return;

    await ref.read(appStatusProvider.notifier).markProfileCompleted();
    ref.nav.replaceAll([const MainFlowRoute()]);
  }

  Future<bool> sendSelectedUserPreferences() async {
    final error = await ref
        .read(globalProfileProvider.notifier)
        .updateProfile(preferences: _selectedUserPreferences());
    if (error != null) {
      _showSaveError(error);
      return false;
    }

    return true;
  }

  void _showSaveError(RemoteException error) {
    final message = error.messages.isNotEmpty
        ? error.messages
        : 'Не удалось сохранить предпочтения';
    ref.nav.showSnackBar(message: message);
  }

  SelectedUserPreferencesModel _selectedUserPreferences() {
    return SelectedUserPreferencesModel(
      communication: _singleId(state.communicationId),
      sleep: _singleId(state.sleepId),
      employment: state.employmentId.toList(),
      badHabits: state.badHabitsId.toList(),
      guests: _singleId(state.guestsId),
      noiseLevel: _singleId(state.noiseLevelId),
      cleaning: _singleId(state.cleaningId),
      pets: state.petsId.toList(),
      petsAttitude: _singleId(state.petsAttitudeId),
    );
  }

  List<int> _singleId(int id) => id == 0 ? const [] : [id];

  bool _validateLifestyle() {
    final error = ref.l10n.selectAtLeastOneOption;
    final communicationError = state.communicationId == 0 ? error : '';
    final sleepError = state.sleepId == 0 ? error : '';
    final employmentError = state.employmentId.isEmpty ? error : '';
    final badHabitsError = state.badHabitsId.isEmpty ? error : '';

    state = state.copyWith(
      communicationError: communicationError,
      sleepError: sleepError,
      employmentError: employmentError,
      badHabitsError: badHabitsError,
    );

    return [
      communicationError,
      sleepError,
      employmentError,
      badHabitsError,
    ].every((error) => error.isEmpty);
  }

  bool _validateHousehold() {
    final error = ref.l10n.selectAtLeastOneOption;
    final guestsError = state.guestsId == 0 ? error : '';
    final noiseLevelError = state.noiseLevelId == 0 ? error : '';
    final cleaningError = state.cleaningId == 0 ? error : '';
    final petsError = state.petsId.isEmpty ? error : '';
    final petsAttitudeError = state.petsAttitudeId == 0 ? error : '';

    state = state.copyWith(
      guestsError: guestsError,
      noiseLevelError: noiseLevelError,
      cleaningError: cleaningError,
      petsError: petsError,
      petsAttitudeError: petsAttitudeError,
    );

    return [
      guestsError,
      noiseLevelError,
      cleaningError,
      petsError,
      petsAttitudeError,
    ].every((error) => error.isEmpty);
  }
}
