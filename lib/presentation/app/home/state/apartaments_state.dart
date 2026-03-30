import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:roomate/domain/models/apartaments/apartament_model.dart';

part 'apartaments_state.freezed.dart';

@freezed
sealed class ApartamentsState with _$ApartamentsState {
  const factory ApartamentsState({
    @Default([]) List<ApartamentModel> apartaments,
  }) = _ApartamentsState;
}
