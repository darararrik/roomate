import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/domain/models/apartaments/apartament_filter.dart';
import 'package:roomate/domain/repository/apartaments_repository.dart';
import 'package:roomate/presentation/app/home/state/apartaments_state.dart';
import 'package:roomate/presentation/di/providers.dart';

part 'apartaments_notifier.g.dart';

@riverpod
class ApartamentsNotifier extends _$ApartamentsNotifier {
  IApartamentsRepository get _repository => ref.read(apartamentsRepositoryProvider);

  @override
  Future<ApartamentsState> build() async {
    final apartaments = await _repository.fetchApartaments(const ApartamentFilter());
    return ApartamentsState(apartaments: apartaments);
  }

  Future<void> fetchWithFilter(ApartamentFilter filter) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final apartaments = await _repository.fetchApartaments(filter);
      return ApartamentsState(apartaments: apartaments);
    });
  }
}
