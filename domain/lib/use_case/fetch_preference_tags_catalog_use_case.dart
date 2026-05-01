import 'package:shared/shared.dart';

import 'package:domain/models/preferences_tags/preference_tags_catalog_model.dart';
import 'package:domain/repository/profile_repository.dart';

class FetchPreferenceTagsCatalogUseCase {
  const FetchPreferenceTagsCatalogUseCase(this._repository);

  final IProfileRepository _repository;

  Future<FetchPreferenceTagsCatalogResult> call() async {
    final result = await _repository.fetchPreferenceTagsCatalog();

    return result.fold(
      (error) => FetchPreferenceTagsCatalogResult(
        tags: const PreferenceTagsCatalogModel(),
        error: error,
      ),
      (tags) => FetchPreferenceTagsCatalogResult(tags: tags),
    );
  }
}

class FetchPreferenceTagsCatalogResult {
  const FetchPreferenceTagsCatalogResult({required this.tags, this.error});

  final PreferenceTagsCatalogModel tags;
  final RemoteException? error;
}
