import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/domain/models/user_model.dart';
import 'package:roomate/domain/repository/profile_repository.dart';
import 'package:roomate/presentation/di/providers.dart';

part 'global_profile_notifier.g.dart';

@Riverpod(keepAlive: true)
class GlobalProfileNotifier extends _$GlobalProfileNotifier {
  late final IProfileRepository _profileRepository;

  @override
  Future<UserModel> build() async {
    // Инициализируем репозиторий через ref
    _profileRepository = ref.read(profileRepositoryProvider);

    final result = await _profileRepository.fetchProfile();

    // Используем fold, чтобы вернуть либо полученного юзера,
    // либо дефолтную пустую модель в случае ошибки
    return result.fold(
      (failure) => const UserModel(), // Если ошибка — пустой профиль
      (user) => user, // Если успех — данные пользователя
    );
  }

  /// Метод для локального обновления номера телефона в стейте
  void savePhoneNumber(String phoneNumber) {
    // В AsyncNotifier стейт обновляется через update или напрямую,
    // если мы уверены, что данные загружены
    state = state.whenData((user) => user.copyWith(phone: phoneNumber));
  }

  /// Пример метода для полного обновления профиля (например, после редактирования)
  Future<void> updateProfile(UserModel updatedUser) async {
    //   // Можно сначала обновить локально для мгновенного UI-отклика
    //   final previousState = state;
    //   state = AsyncData(updatedUser);

    //   final result = await _profileRepository.updateProfile(updatedUser);

    //   result.fold(
    //     (l) {
    //       // Если на сервере ошибка — откатываем стейт
    //       state = previousState;
    //       // Тут можно прокинуть ошибку в UI через какой-нибудь event bus или state
    //     },
    //     (r) => state = AsyncData(r), // Успешно сохранено
    //   );
  }
}
