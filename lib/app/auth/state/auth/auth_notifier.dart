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

  void openEnterCodeScreen() {
    final cleanPhone = state.phone.replaceAll(RegExp(r'\D'), '');
    final formattedPhone = cleanPhone.startsWith('7') ? '+$cleanPhone' : '+7$cleanPhone';
    ref.read(authRepositoryProvider).signInByPhone(formattedPhone);
    ref.nav.push(const EnterCodeRoute());
  }

  // Future<void> verify() async {
  //   if (!state.isPinComplete) return;
  //   final result = await ref.read(authRepositoryProvider).verifySms(state.phone, state.code);
  //   result.fold((e) => setError(e.kind.toString()), (user) async {
  //     await ref.read(globalProfileProvider.notifier).createProfileWithPhone(user);
  //     ref.nav.replace(const OnBoardingRoute());
  //   });
  // }
  //TODO: потом разбить
  void openOnBoardingScreen() async {
    if (!state.isPinComplete) return;
    final cleanPhone = state.phone.replaceAll(RegExp(r'\D'), '');
    final formattedPhone = cleanPhone.startsWith('7') ? '+$cleanPhone' : '+7$cleanPhone';
    final result = await ref.read(authRepositoryProvider).verifySms(formattedPhone, state.code);
    result.fold((e) => setError(e.rootException.toString()), (user) async {
      await ref.read(globalProfileProvider.notifier).createProfileWithPhone(user);
      ref.nav.replace(const OnBoardingRoute());
    });
  }
}
