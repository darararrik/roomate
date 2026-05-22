import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_ad_data.freezed.dart';
part 'my_ad_data.g.dart';

@freezed
sealed class MyAdData with _$MyAdData {
  const factory MyAdData({
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'image_urls') @Default(<String>[]) List<String> imageUrls,
    @JsonKey(name: 'price') @Default('') String price,
    @JsonKey(name: 'rooms_count') @Default('') String roomsCount,
    @JsonKey(name: 'area') @Default('') String area,
    @JsonKey(name: 'floor') @Default(0) int floor,
    @JsonKey(name: 'total_floor') @Default(0) int totalFloor,
    @JsonKey(name: 'address') @Default('') String address,
    @JsonKey(name: 'status') @Default('') String status,
  }) = _MyAdData;

  factory MyAdData.fromJson(Map<String, dynamic> json) =>
      _$MyAdDataFromJson(json);
}
