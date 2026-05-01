import 'package:domain/domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/di/repository_providers.dart';

final loadCurrentProfileUseCaseProvider = Provider<LoadCurrentProfileUseCase>(
  (ref) => LoadCurrentProfileUseCase(ref.read(profileRepositoryProvider)),
);
