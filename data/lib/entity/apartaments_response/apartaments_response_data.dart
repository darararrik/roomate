import 'package:data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'apartaments_response_data.freezed.dart';
part 'apartaments_response_data.g.dart';

@freezed
abstract class ApartamentsResponseData with _$ApartamentsResponseData {
  factory ApartamentsResponseData({
    @JsonKey(name: 'total_count') @Default(0) int totalCount,
    @JsonKey(name: 'items') @Default([]) List<ApartamentData> items,
  }) = _ApartamentsResponseData;

  factory ApartamentsResponseData.fromJson(Map<String, dynamic> json) =>
      _$ApartamentsResponseDataFromJson(json);
}
