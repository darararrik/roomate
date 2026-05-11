import 'package:freezed_annotation/freezed_annotation.dart';

part 'apartament_preview_model.freezed.dart';

@freezed
sealed class ApartamentPreviewModel with _$ApartamentPreviewModel {
  const factory ApartamentPreviewModel({
    @Default('') String id,
    @Default([]) List<String> imageUrls,
    @Default('') String price,
    @Default('') String roomsCount,
    @Default('') String area,
    @Default(0) int floor,
    @Default(0) int totalFloor,
    @Default('') String address,
  }) = _ApartamentPreviewModel;
}
