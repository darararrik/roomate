import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/enums.dart';
import '../tenant/tenant_model.dart';
import 'my_ad_model.dart';

part 'ad_application_model.freezed.dart';

@freezed
sealed class AdApplicationModel with _$AdApplicationModel {
  const factory AdApplicationModel({
    @Default('') String id,
    @Default(AdApplicationStatus.unknown) AdApplicationStatus status,
    @Default('') String createdAt,
    @Default(MyAdModel()) MyAdModel ad,
    @Default(TenantModel()) TenantModel tenant,
  }) = _AdApplicationModel;
}
