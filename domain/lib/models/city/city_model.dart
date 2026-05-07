import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';

@freezed
abstract class CityModel with _$CityModel {
  factory CityModel({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String fiasId,
    @Default('') String region,
  }) = _CityModel;
}
