import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/lib.dart';

part 'apartaments_notifier.g.dart';

@Riverpod(keepAlive: true)
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
