import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/lib.dart';

part 'global_profile_notifier.g.dart';

@Riverpod(keepAlive: true)
class GlobalProfileNotifier extends _$GlobalProfileNotifier {
  IProfileRepository get _repository => ref.read(profileRepositoryProvider);

  @override
  Future<UserModel> build() async {
    return UserModel.guest();
  }

  Future<void> fetchProfile() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final res = await _repository.fetchProfile();
      return res.fold((e) => throw e, (u) => u);
    });
  }

  Future<bool> updateProfile({
    String? firstName,
    String? lastName,
    String? avatarUrl,
    GenderEnum? gender,
    int? age,
    // List<TagModel>? tags,
  }) async {
    // Берем текущие данные из стейта (если там еще загрузка или ошибка — берем гостя)
    final current = state.value ?? UserModel.guest();

    final updated = current.copyWith(
      firstName: firstName ?? current.firstName,
      lastName: lastName ?? current.lastName,
      avatarUrl: avatarUrl ?? current.avatarUrl,
      gender: gender ?? current.gender,
      age: age ?? current.age,
      // tags: tags ?? current.tags,
    );

    // Ставим состояние загрузки для UI
    state = const AsyncLoading();

    final res = await _repository.updateProfile(updated);

    return res.fold(
      (e) {
        state = AsyncError(e, StackTrace.current);
        return false;
      },
      (saved) {
        state = AsyncData(saved);
        return true;
      },
    );
  }
}
