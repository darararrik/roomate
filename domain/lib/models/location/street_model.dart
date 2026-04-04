import 'package:freezed_annotation/freezed_annotation.dart';

part 'street_model.freezed.dart';

@freezed
sealed class StreetModel with _$StreetModel {
  factory StreetModel({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String district,
    @Default('') String regionLine,
  }) = _StreetModel;
}
