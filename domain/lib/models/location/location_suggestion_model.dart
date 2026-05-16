import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_suggestion_model.freezed.dart';
part 'location_suggestion_model.g.dart';

@freezed
sealed class LocationSuggestionModel with _$LocationSuggestionModel {
  @JsonSerializable(includeIfNull: false)
  const factory LocationSuggestionModel({
    @Default('') String value,
    @Default('') String unrestrictedValue,
    @Default('') String country,
    @Default('') String region,
    String? city,
    String? cityFiasId,
    String? district,
    String? street,
    String? streetFiasId,
    String? house,
    String? houseFiasId,
    double? geoLat,
    double? geoLon,
  }) = _LocationSuggestionModel;

  factory LocationSuggestionModel.fromJson(Map<String, dynamic> json) =>
      _$LocationSuggestionModelFromJson(json);
}
