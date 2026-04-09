import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

part 'auth_notifier.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  AuthState build() {
    return const AuthState();
  }

  void updateCode(String code) {
    state = state.copyWith(code: code, isError: false);
  }

  void codeSentSuccess() {
    state = state.copyWith(isCodeSent: true, isError: false, errorMessage: '');
  }

  void setPhoneNumber(String value) {
    state = state.copyWith(phone: value);
  }

  void setError(String message) {
    state = state.copyWith(isError: true, errorMessage: message, isCodeVerified: false);
  }

  void checkCode() {
    final l10n = ref.read(l10nProvider);
    if (state.code == "0000") {
      state = state.copyWith(isCodeVerified: true);
    } else {
      state = state.copyWith(isCodeVerified: false, isError: true, errorMessage: l10n.wrongCode);
    }
  }

  void codeVerifiedSuccess() {
    state = state.copyWith(isCodeVerified: true, isError: false);
  }

  void enterByPhoneNumber() => ref.nav.push(const EnterPhoneNumberRoute());

  void enterAsGuest() {
    ref.read(globalProfileProvider.notifier).createProfileGuest();
    ref.nav.replace(const MainFlowRoute());
  }

  void openEnterCodeScreen() => ref.nav.push(const EnterCodeRoute());

  void openOnBoardingScreen() async {
    if (!state.isPinComplete) return;

    checkCode();

    if (state.isCodeVerified) {
      // 1. Гарантируем наличие профиля (берем существующий или создаем новый)
      final success = await ref
          .read(globalProfileProvider.notifier)
          .ensureProfileByPhone(state.phone);

      // 2. Проверяем, нет ли ошибки после создания
      if (!success) {
        setError("Ошибка при создании профиля");
        return;
      }

      // 3. Только если профиль создан успешно — переходим
      ref.nav.replace(const OnBoardingRoute());
    }
  }
}
