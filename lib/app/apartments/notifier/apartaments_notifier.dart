import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/lib.dart';
import 'package:shared/exception/remote_exception.dart';

part 'apartaments_notifier.g.dart';

@Riverpod(keepAlive: true)
class ApartamentsNotifier extends _$ApartamentsNotifier {
  IApartamentsRepository get _repository => ref.read(apartamentsRepositoryProvider);

  @override
  Future<ApartamentsState> build() async {
    final result = await _init();
    return result.fold(
      (error) => throw error,
      (apartaments) => ApartamentsState(apartaments: apartaments),
    );
  }

  Future<Either<RemoteException, List<ApartamentPreviewModel>>> _init() async {
    final profile = await ref.watch(globalProfileProvider.future);
    final cities = await ref.watch(citiesProvider.future);
    final city = _resolveInitialCity(cities, profile);
    final result = await _repository.fetchApartaments(
      ApartamentFilterModel(cityFiasId: city.fiasId),
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

  CityModel _resolveInitialCity(List<CityModel> cities, ProfileModel? profile) {
    final profileCityFiasId = (profile?.cityFiasId ?? '').trim();
    if (profileCityFiasId.isNotEmpty) {
      for (final city in cities) {
        if (city.fiasId.trim() == profileCityFiasId) {
          return city;
        }
      }
    }

    final profileCityTitle = (profile?.city ?? '').trim().toLowerCase();
    if (profileCityTitle.isNotEmpty) {
      for (final city in cities) {
        if (city.title.trim().toLowerCase() == profileCityTitle) {
          return city;
        }
      }
    }

    for (final city in cities) {
      if (city.fiasId.trim() == AppDefaultCity.fiasId) {
        return city;
      }
    }

    return AppDefaultCity.city;
  }
}
