import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:data/data.dart';

part 'auth_response_data.freezed.dart';
part 'auth_response_data.g.dart';

@freezed
abstract class AuthResponseData with _$AuthResponseData {
  const factory AuthResponseData({
    @JsonKey(name: 'accessToken') String? accessToken,
    @JsonKey(name: 'refreshToken') String? refreshToken,
    @JsonKey(name: 'tokenType') String? tokenType,
    @JsonKey(name: 'expiresInSeconds') int? expiresInSeconds,
    @JsonKey(name: 'user') UserData? user,
  }) = _AuthResponseData;

  factory AuthResponseData.fromJson(Map<String, dynamic> json) => _$AuthResponseDataFromJson(json);
}
