import 'package:domain/domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../repository/repository_providers.dart';

final fetchPreferenceTagsCatalogUseCaseProvider =
    Provider<FetchPreferenceTagsCatalogUseCase>(
      (ref) => FetchPreferenceTagsCatalogUseCase(
        ref.read(profileRepositoryProvider),
      ),
    );

final updateProfileUseCaseProvider = Provider<UpdateProfileUseCase>(
  (ref) => UpdateProfileUseCase(ref.read(profileRepositoryProvider)),
);
