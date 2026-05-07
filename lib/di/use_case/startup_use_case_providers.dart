import 'package:domain/domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../repository/repository_providers.dart';

final loadCurrentProfileUseCaseProvider = Provider<LoadCurrentProfileUseCase>(
  (ref) => LoadCurrentProfileUseCase(ref.read(profileRepositoryProvider)),
);
