import 'package:freezed_annotation/freezed_annotation.dart';

part 'tenant_data.freezed.dart';
part 'tenant_data.g.dart';

@freezed
sealed class TenantData with _$TenantData {
  const factory TenantData({
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'first_name') @Default('') String firstName,
    @JsonKey(name: 'last_name') @Default('') String lastName,
    @JsonKey(name: 'age') @Default(0) int age,
    @JsonKey(name: 'gender') @Default('') String gender,
    @JsonKey(name: 'city') @Default('') String city,
    @JsonKey(name: 'photo') @Default('') String photo,
    @JsonKey(name: 'phone') @Default('') String phone,
    @JsonKey(name: 'is_verified') @Default(false) bool isVerified,
  }) = _TenantData;

  factory TenantData.fromJson(Map<String, dynamic> json) => _$TenantDataFromJson(json);
}
