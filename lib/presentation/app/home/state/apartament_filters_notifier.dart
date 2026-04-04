import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/domain/repository/apartaments_repository.dart';
import 'package:roomate/domain/models/filter/filter_model.dart';
import 'package:roomate/presentation/di/providers.dart';

part 'apartament_filters_notifier.g.dart';

@riverpod
class ApartamentFiltersNotifier extends _$ApartamentFiltersNotifier {
  IApartamentsRepository get _repository => ref.read(apartamentsRepositoryProvider);

  @override
  Future<FilterModel> build() async {
    return await _repository.fetchFilters();
  }
}
