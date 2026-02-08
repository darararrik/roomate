import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sms_notifier_provider.g.dart';

@riverpod
class SmsNotifier extends _$SmsNotifier {
  Timer? _timer;

  @override
  int build() {
    ref.onDispose(() => _timer?.cancel());
    _startTimer();
    return 59;
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state > 0) {
        state--;
      } else {
        _timer?.cancel();
      }
    });
  }

  void resetTimer() {
    state = 59;
    _startTimer();
  }
}
