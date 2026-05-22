import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_application_submit_data.freezed.dart';
part 'ad_application_submit_data.g.dart';

@freezed
sealed class AdApplicationSubmitData with _$AdApplicationSubmitData {
  const factory AdApplicationSubmitData({
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'ad_id') @Default('') String adId,
    @JsonKey(name: 'status') @Default('') String status,
    @JsonKey(name: 'created_at') @Default('') String createdAt,
  }) = _AdApplicationSubmitData;

  factory AdApplicationSubmitData.fromJson(Map<String, dynamic> json) =>
      _$AdApplicationSubmitDataFromJson(json);
}
