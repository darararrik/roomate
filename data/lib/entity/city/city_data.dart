import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_data.freezed.dart';
part 'city_data.g.dart';

@freezed
abstract class CityData with _$CityData {
  factory CityData({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'fias_id') @Default('') String fiasId,
    @JsonKey(name: 'region') @Default('') String region,
  }) = _CityData;

  factory CityData.fromJson(Map<String, dynamic> json) =>
      _$CityDataFromJson(json);
}
