import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';
import 'package:roomate/utils/helpers/phone_number.dart';

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

  void codeVerifiedSuccess() {
    state = state.copyWith(isCodeVerified: true, isError: false);
  }

  void enterByPhoneNumber() => ref.nav.push(const EnterPhoneNumberRoute());

  void enterAsGuest() {
    ref.read(globalProfileProvider.notifier).enterAsGuest();
    ref.nav.replace(const MainFlowRoute());
  }

  void openEnterCodeScreen() async {
    final res = await requestCode();
    if (res) {
      ref.nav.push(const EnterCodeRoute());
    }
  }

  Future<bool> requestCode() async {
    final phone = PhoneNumber(state.phone);
    final res = await ref.read(authRepositoryProvider).signInByPhone(phone.value);
    final isSucces = res.fold(
      (l) {
        ref.nav.showSnackBar(message: "Не удалось отправить смс код");
        return false;
      },
      (r) {
        return true;
      },
    );
    return isSucces;
  }

  Future<void> verifySms() async {
    if (!state.isPinComplete) return;
    final phone = PhoneNumber(state.phone);
    final result = await ref.read(authRepositoryProvider).verifySms(phone.value, state.code);
    result.fold((e) => setError(e.messages), (user) async {
      if (user.isNewUser) {
        await ref.read(appStatusProvider.notifier).markProfileIncomplete();
        openSetupProfileScreen();
      } else {
        await ref.read(globalProfileProvider.notifier).fetchProfile(showError: false);
        await ref.read(appStatusProvider.notifier).markProfileCompleted();
        openMainScreen();
      }
    });
  }

  void openMainScreen() {
    ref.nav.replace(const MainFlowRoute());
  }

  void openSetupProfileScreen() async {
    ref.nav.push(const SetupProfileRoute());
  }
}
