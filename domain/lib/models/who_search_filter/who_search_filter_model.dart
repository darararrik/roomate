import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:domain/enums/gender_enum.dart';

part 'who_search_filter_model.freezed.dart';

@freezed
sealed class WhoSearchFilterModel with _$WhoSearchFilterModel {
  const factory WhoSearchFilterModel({
    GenderEnum? gender,
    int? minAge,
    int? maxAge,
    int? minGroupSize,
    int? maxGroupSize,
    @Default('') String searchQuery,
    @Default(false) bool childrenAllowed,
    @Default(false) bool partnerAllowed,
    @Default(false) bool petsAllowed,
    @Default(false) bool smokingAllowed,
  }) = _WhoSearchFilterModel;
}
