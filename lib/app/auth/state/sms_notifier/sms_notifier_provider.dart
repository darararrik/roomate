import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/app/auth/state/sms_notifier/sms_state.dart';

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

  void resetTimer() {
    if (!state.canResend) return; // Защита от лишних нажатий
    state = state.copyWith(timerCount: 59); // Сбрасываем
    _startTimer();
    // Тут можно вызвать API для повторной отправки SMS
  }
}
