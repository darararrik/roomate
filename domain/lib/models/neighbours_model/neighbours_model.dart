import 'package:freezed_annotation/freezed_annotation.dart';

part 'neighbours_model.freezed.dart';

@freezed
abstract class NeighboursModel with _$NeighboursModel {
  factory NeighboursModel({
    @Default('') String id,
    @Default('') String title,
    @Default('') String description,
    @Default(0) int participantsCount,
    @Default(0) int maxParticipantsCount,
    @Default(0) int price,
  }) = _NeighboursModel;
}
