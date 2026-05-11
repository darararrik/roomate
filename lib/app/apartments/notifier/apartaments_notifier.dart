import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/lib.dart';

part 'apartaments_notifier.g.dart';

@Riverpod(keepAlive: true)
class ApartamentsNotifier extends _$ApartamentsNotifier {
  IApartamentsRepository get _repository => ref.read(apartamentsRepositoryProvider);

  @override
  Future<ApartamentsState> build() async {
    final profile = await ref.watch(globalProfileProvider.future);
    final cities = await ref.watch(citiesProvider.future);
    final city = _resolveInitialCity(cities, profile);
    final result = await _repository.fetchApartaments(ApartamentFilterModel(cityId: city.id));
    return result.fold(
      (error) => throw error,
      (apartaments) => ApartamentsState(apartaments: apartaments),
    );
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
    final profileCityId = profile?.cityId ?? 0;
    if (profileCityId != 0) {
      for (final city in cities) {
        if (city.id == profileCityId) {
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
      if (city.title.trim().toLowerCase() == 'москва') {
        return city;
      }
    }

    return CityModel(title: 'Москва');
  }
}
