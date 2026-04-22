import 'package:freezed_annotation/freezed_annotation.dart';

part 'pref_state.freezed.dart';

@freezed
abstract class PrefState with _$PrefState {
  const factory PrefState({
    @Default(0) int communcationId,
    @Default(0) int sleepId,
    @Default({}) Set<int> employmentId,
    @Default({}) Set<int> badHabitsId,
    @Default(0) int guestsId,
    @Default(0) int noiseLevelId,
    @Default(0) int cleaningId,
    @Default({}) Set<int> petsId,
    @Default(0) int petsAttitudeId,
  }) = _PrefState;
}
