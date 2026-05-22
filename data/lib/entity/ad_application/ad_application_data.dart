import 'package:freezed_annotation/freezed_annotation.dart';

import '../my_ad/my_ad_data.dart';
import '../tenant/tenant_data.dart';
import '../tenant_profile/tenant_profile_data.dart';

part 'ad_application_data.freezed.dart';
part 'ad_application_data.g.dart';

@freezed
sealed class AdApplicationData with _$AdApplicationData {
  const factory AdApplicationData({
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'status') @Default('') String status,
    @JsonKey(name: 'created_at') @Default('') String createdAt,
    @JsonKey(name: 'updated_at') @Default('') String updatedAt,
    @JsonKey(name: 'ad') MyAdData? ad,
    @JsonKey(name: 'tenant') TenantData? tenant,
    @JsonKey(name: 'tenant_profile') TenantProfileData? tenantProfile,
  }) = _AdApplicationData;

  factory AdApplicationData.fromJson(Map<String, dynamic> json) =>
      _$AdApplicationDataFromJson(json);
}
