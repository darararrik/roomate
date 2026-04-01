import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/domain/enums/gender_enum.dart';
import 'package:roomate/domain/models/tag_model.dart';
import 'package:roomate/domain/models/user_model.dart';
import 'package:roomate/domain/repository/profile_repository.dart';
import 'package:roomate/presentation/di/providers.dart';
import 'package:roomate/shared/exception/RemoteException.dart';

part 'global_profile_notifier.g.dart';

@Riverpod(keepAlive: true)
class GlobalProfileNotifier extends _$GlobalProfileNotifier {
  IProfileRepository get _repository => ref.read(profileRepositoryProvider);

  @override
  Future<UserModel> build() async {
    return _fetchProfileOrThrow();
  }

  Future<UserModel> _fetchProfileOrThrow() async {
    final res = await _repository.fetchProfile();
    return res.fold((e) => throw e, (u) => u);
  }

  Future<void> refreshProfile() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_fetchProfileOrThrow);
  }

  Future<bool> ensureProfileByPhone(String phone) async {
    final currentUser = state.asData?.value;
    if (currentUser != null && currentUser.phone.isNotEmpty) return true;

    final existing = await _repository.fetchProfile();
    return existing.fold((_) => createProfileWithPhone(phone), (user) {
      state = AsyncData(user);
      return Future.value(true);
    });
  }

  Future<bool> createProfileWithPhone(String phone) async {
    final fullPhone = '+7$phone';
    final res = await _repository.createProfile(UserModel(phone: fullPhone));

    return res.fold(
      (e) {
        state = AsyncError(e, StackTrace.current);
        _handleRemoteException(e);
        return false;
      },
      (user) {
        state = AsyncData(user);
        return true;
      },
    );
  }

  Future<bool> updateProfile({
    String? firstName,
    String? lastName,
    String? avatarUrl,
    GenderEnum? gender,
    int? age,
    List<TagModel>? tags,
  }) async {
    final current = state.maybeWhen(data: (u) => u, orElse: () => const UserModel());

    final updated = current.copyWith(
      firstName: firstName ?? current.firstName,
      lastName: lastName ?? current.lastName,
      avatarUrl: avatarUrl ?? current.avatarUrl,
      gender: gender ?? current.gender,
      age: age ?? current.age,
      tags: tags ?? current.tags,
    );

    final res = await _repository.updateProfile(updated);

    return res.fold(
      (e) {
        state = AsyncError(e, StackTrace.current);
        _handleRemoteException(e);
        return false;
      },
      (saved) {
        state = AsyncData(saved);
        return true;
      },
    );
  }

  Future<bool> deleteProfile() async {
    final res = await _repository.deleteProfile();
    return res.fold(
      (e) {
        state = AsyncError(e, StackTrace.current);
        _handleRemoteException(e);
        return false;
      },
      (_) {
        state = const AsyncData(UserModel());
        return true;
      },
    );
  }

  void _handleRemoteException(RemoteException error) {
    if (error.kind == RemoteExceptionKind.refreshTokenFailed) {
      // logout flow
    } else {
      // snackbar / telemetry
    }
  }
}
