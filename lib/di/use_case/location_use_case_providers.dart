import 'package:domain/domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../repository/repository_providers.dart';

final fetchCitiesUseCaseProvider = Provider<FetchCitiesUseCase>(
  (ref) => FetchCitiesUseCase(repository: ref.read(locationRepositoryProvider)),
);
