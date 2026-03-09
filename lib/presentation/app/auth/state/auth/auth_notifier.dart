import 'package:flutter/material.dart';
import 'package:pin_code_fields/src/core/pin_input_controller.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/presentation/app/auth/state/auth/auth_state.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/extensions.dart';
import 'package:roomate/state/l10_provider/l10n_provider.dart';

part 'auth_notifier.g.dart';

int count = 0;

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  AuthState build() {
    count++;
    debugPrint('AuthNotifier build $count');

    return const AuthState();
  }

  void updatePhone(String phone) =>
      state = state.copyWith(phone: phone, errorMessage: '');

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
    state = state.copyWith(
      isError: true,
      errorMessage: message,
      isCodeVerified: false,
    );
  }

  void checkCode() {
    final l10n = ref.read(l10nProvider);
    if (state.code == "0000") {
      state = state.copyWith(isCodeVerified: true);
    } else {
      state = state.copyWith(
        isCodeVerified: false,
        isError: true,
        errorMessage: l10n.wrongCode,
      );
    }
  }

  void codeVerifiedSuccess() {
    state = state.copyWith(isCodeVerified: true, isError: false);
  }

  void openEnterPhoneNumberScreen() =>
      ref.nav.push(const EnterPhoneNumberRoute());

  void openMainScreen() {
    ref.nav.replace(const NavBarRoute());
  }

  void openEnterCodeScreen() => ref.nav.push(const EnterCodeRoute());

  void openOnBoardingScreen() {
    if (!state.isPinComplete) return;
    // Если код верный (тут обычно еще проверка на валидность через API)
    checkCode();
    if (state.isCodeVerified) {
      ref.nav.replace(const OnBoardingRoute());
    }
  }
}
