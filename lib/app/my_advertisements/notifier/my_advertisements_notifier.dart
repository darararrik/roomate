import 'package:domain/domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/lib.dart';
import 'package:shared/shared.dart';

part 'my_advertisements_notifier.g.dart';

/// Получить мои объявдления за собсвтенника
@riverpod
Future<List<MyAdModel>> myAds(Ref ref) async {
  final isOwner = ref.watch(globalProfileProvider.select((state) => state.value?.isOwner ?? false));
  if (!isOwner) {
    return [];
  }
  final result = await ref.read(apartamentsRepositoryProvider).fetchMyAds();
  return result.fold((error) => throw error, (items) => items);
}

/// Получить заявки от арендторов за собственника
@riverpod
Future<List<AdApplicationModel>> applicationsForAds(Ref ref) async {
  final result = await ref.read(apartamentsRepositoryProvider).fetchIncomingAdApplications();
  return result.fold((error) => throw error, (items) => items);
}

@riverpod
Future<List<AdApplicationModel>> applicationsForAdsByStatus(Ref ref, AdApplicationStatus status) async {
  final result = await ref.read(apartamentsRepositoryProvider).fetchIncomingAdApplications(status: status);
  return result.fold((error) => throw error, (items) => items);
}

@riverpod
Future<AdApplicationDetailModel> applicationDetailForAd(Ref ref, String applicationId) async {
  final result = await ref.read(apartamentsRepositoryProvider).fetchIncomingAdApplicationDetails(applicationId);
  return result.fold((error) => throw error, (item) => item);
}

@riverpod
class IncomingAdApplicationAction extends _$IncomingAdApplicationAction {
  @override
  bool build() {
    return false;
  }

  Future<RemoteException?> accept(String applicationId) async {
    state = true;
    final result = await ref.read(apartamentsRepositoryProvider).acceptIncomingAdApplication(applicationId);
    state = false;
    return result.fold((error) => error, (_) {
      ref.invalidate(applicationsForAdsProvider);
      for (final status in AdApplicationStatus.values) {
        ref.invalidate(applicationsForAdsByStatusProvider(status));
      }
      ref.invalidate(applicationDetailForAdProvider(applicationId));
      ref.invalidate(myAdApplicationDetailProvider(applicationId));
      return null;
    });
  }

  Future<RemoteException?> reject(String applicationId) async {
    state = true;
    final result = await ref.read(apartamentsRepositoryProvider).rejectIncomingAdApplication(applicationId);
    state = false;
    return result.fold((error) => error, (_) {
      ref.invalidate(applicationsForAdsProvider);
      for (final status in AdApplicationStatus.values) {
        ref.invalidate(applicationsForAdsByStatusProvider(status));
      }
      ref.invalidate(applicationDetailForAdProvider(applicationId));
      ref.invalidate(myAdApplicationDetailProvider(applicationId));
      return null;
    });
  }
}
