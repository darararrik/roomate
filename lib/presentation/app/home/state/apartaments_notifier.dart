import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/presentation/app/home/state/apartaments_state.dart';
import 'package:roomate/presentation/di/providers.dart';

part 'apartaments_notifier.g.dart';

@riverpod
class ApartamentsNotifier extends _$ApartamentsNotifier {
  ApartamentsState build() {
    final apartaments = ref
        .read(apartamentsRepositoryProvider)
        .getApartaments();
    return ApartamentsState(apartaments: apartaments);
  }
}
