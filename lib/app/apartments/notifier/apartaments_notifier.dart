import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/lib.dart';
import 'package:shared/exception/remote_exception.dart';

part 'apartaments_notifier.g.dart';

@Riverpod(keepAlive: true)
class ApartamentsNotifier extends _$ApartamentsNotifier {
  IApartamentsRepository get _repository =>
      ref.read(apartamentsRepositoryProvider);

  @override
  Future<ApartamentsState> build() async {
    final result = await _init();
    return result.fold(
      (error) => throw error,
      (apartaments) => ApartamentsState(apartaments: apartaments),
    );
  }

  Future<Either<RemoteException, List<ApartamentPreviewModel>>> _init() async {
    final city = ref.watch(currentMainCityProvider);
    final result = await _repository.fetchApartaments(
      ApartamentFilterModel(cityFiasId: city?.fiasId ?? ''),
    );
    return result;
  }

  Future<void> fetchWithFilter(ApartamentFilterModel filter) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final result = await _repository.fetchApartaments(filter);
      return result.fold((error) {
        ref.nav.showSnackBar(message: "Не удалось загрузить ленту");
        throw error;
      }, (apartaments) => ApartamentsState(apartaments: apartaments));
    });
  }
}
