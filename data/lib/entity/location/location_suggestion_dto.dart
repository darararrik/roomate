import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_suggestion_dto.freezed.dart';
part 'location_suggestion_dto.g.dart';

@freezed
abstract class LocationSuggestionDto with _$LocationSuggestionDto {
  factory LocationSuggestionDto({
    @JsonKey(name: 'value') @Default('') String value,
    @JsonKey(name: 'unrestricted_value') @Default('') String unrestrictedValue,
    @JsonKey(name: 'country') @Default('') String country,
    @JsonKey(name: 'region') @Default('') String region,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'city_fias_id') String? cityFiasId,
    @JsonKey(name: 'district') String? district,
    @JsonKey(name: 'street') String? street,
    @JsonKey(name: 'street_fias_id') String? streetFiasId,
    @JsonKey(name: 'house') String? house,
    @JsonKey(name: 'house_fias_id') String? houseFiasId,
    @JsonKey(name: 'geo_lat') double? geoLat,
    @JsonKey(name: 'geo_lon') double? geoLon,
  }) = _LocationSuggestionDto;

  factory LocationSuggestionDto.fromJson(Map<String, dynamic> json) =>
      _$LocationSuggestionDtoFromJson(json);
}
