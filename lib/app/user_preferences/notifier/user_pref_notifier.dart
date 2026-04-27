import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/app/startup/state/app_status_notifier.dart';
import 'package:roomate/app/user_preferences/state/pref_state.dart';
import 'package:roomate/di/repository_providers.dart';
import 'package:roomate/routing/app_routing.gr.dart';
import 'package:roomate/utils/extensions.dart';

part 'user_pref_notifier.g.dart';

@riverpod
Future<PreferencesTagsModel> preferencesTags(Ref ref) async {
  final result = await ref
      .read(profileRepositoryProvider)
      .fetchPreferencesTags();
  return result.fold((l) => const PreferencesTagsModel(), (r) => r);
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
    state = state.copyWith(communcationId: id);
  }

  void setSleepId(int id) {
    state = state.copyWith(sleepId: id);
  }

  void setGuestsId(int id) {
    state = state.copyWith(guestsId: id);
  }

  void setNoiseLevelId(int id) {
    state = state.copyWith(noiseLevelId: id);
  }

  void setCleaningId(int id) {
    state = state.copyWith(cleaningId: id);
  }

  void setPetsAttitudeId(int id) {
    state = state.copyWith(petsAttitudeId: id);
  }

  void setEmploymentId(int id) {
    _toggleTag(state.employmentId, id, (newSet) {
      state = state.copyWith(employmentId: newSet);
    });
  }

  void setBadHabitsId(int id) {
    _toggleTag(state.badHabitsId, id, (newSet) {
      state = state.copyWith(badHabitsId: newSet);
    });
  }

  void setPetsId(int id) {
    _toggleTag(state.petsId, id, (newSet) {
      state = state.copyWith(petsId: newSet);
    });
  }

  void onPop(TabsRouter tabsRouter) {
    final nextIndex = tabsRouter.activeIndex - 1;
    if (nextIndex >= 0) {
      tabsRouter.setActiveIndex(nextIndex);
    } else {
      ref.nav.navigate(const VerificationStatusRoute());
    }
  }

  Future<void> onNext(TabsRouter tabsRouter) async {
    final nextIndex = tabsRouter.activeIndex + 1;
    if (nextIndex < tabsRouter.pageCount) {
      tabsRouter.setActiveIndex(nextIndex);
      return;
    }

    await ref.read(appStatusProvider.notifier).markProfileCompleted();
    ref.nav.replaceAll([const MainFlowRoute()]);
  }
}
