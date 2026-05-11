import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'apartaments_state.freezed.dart';

@freezed
sealed class ApartamentsState with _$ApartamentsState {
  const factory ApartamentsState({
    @Default([]) List<ApartamentPreviewModel> apartaments,
  }) = _ApartamentsState;
}
