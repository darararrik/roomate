import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_application_submit_model.freezed.dart';

@freezed
sealed class AdApplicationSubmitModel with _$AdApplicationSubmitModel {
  const factory AdApplicationSubmitModel({
    @Default('') String id,
    @Default('') String adId,
    @Default('') String status,
    @Default('') String createdAt,
  }) = _AdApplicationSubmitModel;
}
