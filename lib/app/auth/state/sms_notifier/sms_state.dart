import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:roomate/l10n/app_localizations.dart';

part 'sms_state.freezed.dart';

@freezed
sealed class SmsState with _$SmsState {
  const factory SmsState({@Default(300) int timerCount}) = _SmsState;

  const SmsState._();

  bool get canResend => timerCount == 0;

  String resendText(AppLocalizations l10n) {
    if (canResend) return l10n.sendAgain;
    final minutes = (timerCount ~/ 60).toString().padLeft(2, '0');
    final seconds = (timerCount % 60).toString().padLeft(2, '0');
    return '${l10n.sendAgain} ($minutes:$seconds)';
  }
}
