import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState({
    @Default('') String phone,
    @Default('') String code,
    @Default(false) bool isCodeSent,
    @Default(false) bool isCodeVerified,
    @Default(false) bool isError,
    String? errorMessage,
  }) = _AuthState;
  const AuthState._();
  bool get isPinComplete => code.length == 4;
}
