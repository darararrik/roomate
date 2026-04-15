import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_response_data.freezed.dart';
part 'sign_in_response_data.g.dart';

@freezed
sealed class SignInResponseData with _$SignInResponseData {
  const factory SignInResponseData({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'expiresInSeconds') int? expiresInSeconds,
  }) = _SignInResponseData;

  factory SignInResponseData.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseDataFromJson(json);
}
