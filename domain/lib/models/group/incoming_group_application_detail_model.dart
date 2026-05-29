import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/enums.dart';
import '../tenant/tenant_model.dart';
import 'group_list_item_model.dart';

part 'incoming_group_application_detail_model.freezed.dart';

@freezed
sealed class IncomingGroupApplicationDetailModel
    with _$IncomingGroupApplicationDetailModel {
  const factory IncomingGroupApplicationDetailModel({
    @Default('') String id,
    @Default(AdApplicationStatus.unknown) AdApplicationStatus status,
    @Default('') String createdAt,
    @Default('') String updatedAt,
    @Default(GroupListItemModel()) GroupListItemModel group,
    @Default(TenantModel()) TenantModel tenant,
    @Default(TenantProfileModel()) TenantProfileModel tenantProfile,
  }) = _IncomingGroupApplicationDetailModel;
}
