// Провайдер репозитория (Singleton)
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/data/datasources/remote/remote.dart';
import 'package:roomate/data/repositories/ad_repository.dart';
import 'package:roomate/domain/enums/selection_step_key_enum.dart';
import 'package:roomate/domain/models/selection_category.dart';
part 'di.g.dart';

@riverpod
AdRepository adRepository(Ref ref) {
  return AdRepository(RemoteDataSource());
}

// Провайдер данных для UI
@riverpod
Future<List<AdFieldConfig>> stepFields(Ref ref, SelectionStepKey key) async {
  final repo = ref.watch(adRepositoryProvider);
  return repo.getFields(key);
}
