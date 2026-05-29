import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../core/network_providers.dart';
import '../data_source/data_source_providers.dart';

part 'repository_providers.g.dart';

@Riverpod(keepAlive: true)
IApartamentsRepository apartamentsRepository(Ref ref) {
  return ApartamentsRepositoryImpl(ref.watch(apartamentsDataSourceProvider));
}

@Riverpod(keepAlive: true)
IChatsRepository chatsRepository(Ref ref) {
  return ChatsRepositoryImpl(
    ref.watch(chatsDataSourceProvider),
    baseUrl: ref.watch(apiClientProvider).publicBaseUrl,
  );
}

@Riverpod(keepAlive: true)
IGroupsRepository groupsRepository(Ref ref) {
  return GroupsRepositoryImpl(ref.watch(groupsDataSourceProvider));
}

@Riverpod(keepAlive: true)
IUploadsRepository uploadsRepository(Ref ref) {
  return UploadsRepositoryImpl(ref.watch(uploadsDataSourceProvider));
}

@Riverpod(keepAlive: true)
ILocationRepository locationRepository(Ref ref) {
  return LocationRepositoryImpl(ref.watch(locationDataSourceProvider));
}

@Riverpod(keepAlive: true)
IProfileRepository profileRepository(Ref ref) {
  return ProfileRepository(dataSource: ref.watch(profileDataSourceProvider));
}

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  return AuthRepositoryImpl(ref.watch(authDataSourceProvider));
}
