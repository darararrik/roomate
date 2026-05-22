import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/enums.dart';
import '../tenant/tenant_model.dart';
import 'my_ad_model.dart';

part 'ad_application_detail_model.freezed.dart';

@freezed
sealed class AdApplicationDetailModel with _$AdApplicationDetailModel {
  const factory AdApplicationDetailModel({
    @Default('') String id,
    @Default(AdApplicationStatus.unknown) AdApplicationStatus status,
    @Default('') String createdAt,
    @Default('') String updatedAt,
    @Default(MyAdModel()) MyAdModel ad,
    @Default(TenantModel()) TenantModel tenant,
    @Default(TenantProfileModel()) TenantProfileModel tenantProfile,
  }) = _AdApplicationDetailModel;
}
