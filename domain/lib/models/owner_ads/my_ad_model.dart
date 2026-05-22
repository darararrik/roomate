import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/enums.dart';

part 'my_ad_model.freezed.dart';

@freezed
sealed class MyAdModel with _$MyAdModel {
  const factory MyAdModel({
    @Default('') String id,
    @Default('') String title,
    @Default('') String description,
    @Default(<String>[]) List<String> imageUrls,
    @Default('') String price,
    @Default('') String roomsCount,
    @Default('') String area,
    @Default(0) int floor,
    @Default(0) int totalFloor,
    @Default('') String address,
    @Default(MyAdStatus.unknown) MyAdStatus status,
  }) = _MyAdModel;
}
