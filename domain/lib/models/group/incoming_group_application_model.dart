import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/enums.dart';
import '../tenant/tenant_model.dart';
import 'group_list_item_model.dart';

part 'incoming_group_application_model.freezed.dart';

@freezed
sealed class IncomingGroupApplicationModel
    with _$IncomingGroupApplicationModel {
  const factory IncomingGroupApplicationModel({
    @Default('') String id,
    @Default(AdApplicationStatus.unknown) AdApplicationStatus status,
    @Default('') String createdAt,
    @Default(GroupListItemModel()) GroupListItemModel group,
    @Default(TenantModel()) TenantModel tenant,
  }) = _IncomingGroupApplicationModel;
}
