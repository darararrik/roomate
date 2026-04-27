import 'package:data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response_data.freezed.dart';
part 'auth_response_data.g.dart';

@freezed
abstract class AuthResponseData with _$AuthResponseData {
  const factory AuthResponseData({
    @JsonKey(name: 'access_token') String? accessToken,
    @JsonKey(name: 'refresh_token') String? refreshToken,
    @JsonKey(name: 'token_type') String? tokenType,
    @JsonKey(name: 'expires_in_seconds') int? expiresInSeconds,
    @JsonKey(name: 'user') UserData? user,
  }) = _AuthResponseData;

  factory AuthResponseData.fromJson(Map<String, dynamic> json) => _$AuthResponseDataFromJson(json);
}
