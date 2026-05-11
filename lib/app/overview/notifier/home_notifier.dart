import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

part 'home_notifier.g.dart';

@Riverpod(keepAlive: true)
class HomeNotifier extends _$HomeNotifier {
  static const int _recentApartmentsLimit = 5;

  IApartamentsRepository get _repository =>
      ref.read(apartamentsRepositoryProvider);

  @override
  Future<HomeState> build() async {
    final result = await _repository.fetchApartaments(
      const ApartamentFilterModel(),
    );

    return result.fold(
      (error) => throw error,
      (apartments) => HomeState(
        recentApartments: apartments
            .take(_recentApartmentsLimit)
            .toList(growable: false),
      ),
    );
  }

  void openApartments() => ref.nav.push(const ApartamentsRoute());

  void openCreateAd() => ref.nav.push(const CreateAdRoute());

  void openMyAdvertisements() => ref.nav.push(const MyAdvertisementsRoute());

  void openNeighbours() => ref.nav.push(const NeighboursRoute());

  void openCoworking() => ref.nav.push(const CoworkingRoute());

  void openApartment(ApartamentPreviewModel apartment) {
    ref.nav.push(ApartamnetRoute(apartmentId: apartment.id));
  }
}
