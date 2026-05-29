import 'package:data/entity/group_list_item/group_list_item_data.dart';
import 'package:data/entity/tenant_profile/tenant_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../tenant/tenant_data.dart';

part 'incoming_group_application_data.freezed.dart';
part 'incoming_group_application_data.g.dart';

@freezed
sealed class IncomingGroupApplicationData with _$IncomingGroupApplicationData {
  const factory IncomingGroupApplicationData({
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'status') @Default('') String status,
    @JsonKey(name: 'created_at') @Default('') String createdAt,
    @JsonKey(name: 'group') GroupListItemData? group,
    @JsonKey(name: 'applicant') TenantData? tenant,
    @JsonKey(name: 'applicant_profile') TenantProfileData? applicantProfile,
  }) = _IncomingGroupApplicationData;

  factory IncomingGroupApplicationData.fromJson(Map<String, dynamic> json) =>
      _$IncomingGroupApplicationDataFromJson(json);
}
