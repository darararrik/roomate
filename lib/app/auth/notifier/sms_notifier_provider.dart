import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/app/auth/notifier/auth_notifier.dart';
import 'package:roomate/lib.dart';

part 'sms_notifier_provider.g.dart';

@riverpod
class SmsNotifier extends _$SmsNotifier {
  Timer? _timer;

  @override
  SmsState build() {
    ref.onDispose(() => _timer?.cancel());
    _startTimer();
    return const SmsState();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state.timerCount > 0) {
        state = state.copyWith(timerCount: state.timerCount - 1);
      } else {
        timer.cancel();
      }
    });
  }

  void resetTimer() async {
    if (!state.canResend) return;
    final res = await ref.read(authProvider.notifier).requestCode();
    if (res) {
      state = state.copyWith(timerCount: 300);
      _startTimer();
    } else {
      ref.nav.showSnackBar(message: "Не удалось запросить смс код");
    }
  }
}
