import 'package:domain/domain.dart';

class HomeState {
  const HomeState({this.recentApartments = const []});

  final List<ApartamentPreviewModel> recentApartments;
}
