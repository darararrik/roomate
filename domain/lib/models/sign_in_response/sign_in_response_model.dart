import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_response_model.freezed.dart';

@freezed
sealed class SignInResponseModel with _$SignInResponseModel {
  const factory SignInResponseModel({
    @Default('') String message,
    @Default(0) int expiresInSeconds,
  }) = _SignInResponseModel;
}
