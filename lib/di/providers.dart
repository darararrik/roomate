// import 'package:data/data.dart';
// import 'package:data/services/api_client.dart';
// import 'package:data/services/network_module.dart';
// import 'package:domain/domain.dart';
// import 'package:flutter/material.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:roomate/lib.dart';
// import 'package:talker/talker.dart';

// part 'providers.g.dart';

// // Провайдер для Talker
// @Riverpod(keepAlive: true)
// Talker talker(Ref ref) => Talker();

// // Провайдер для ApiClient
// @Riverpod(keepAlive: true)
// ApiClient apiClient(Ref ref) {
//   final talker = ref.watch(talkerProvider);
//   final tokenRepo = ref.watch(tokenRepositoryProvider);
//   final url = const String.fromEnvironment('api_base_url', defaultValue: 'http://192.168.3.2:8080');
//   final dio = NetworkModule.createDio(
//     baseUrl: url,
//     talker: talker,
//     authInterceptor: AuthInterceptor(tokenRepo),
//   );

//   return ApiClient(dio);
// }

// @Riverpod(keepAlive: true)
// ProfileDataSource profileRemoteDataSource(Ref ref) {
//   return ProfileRemoteDataSource();
// }

// @Riverpod(keepAlive: true)
// ApartamentsRemoteDataSource apartamentsRemoteDataSource(Ref ref) {
//   return ApartamentsRemoteDataSource();
// }

// @Riverpod(keepAlive: true)
// ProfileTagsMockDataSource profileTagsMockDataSource(Ref ref) {
//   return ProfileTagsMockDataSource();
// }

// @Riverpod(keepAlive: true)
// IApartamentsRepository apartamentsRepository(Ref ref) {
//   return ApartamentsRepositoryImpl(ref.watch(apartamentsRemoteDataSourceProvider));
// }

// @Riverpod(keepAlive: true)
// LocationCatalogDataSource locationCatalogDataSource(Ref ref) {
//   return LocationCatalogMockDataSource();
// }

// @Riverpod(keepAlive: true)
// ILocationCatalogRepository locationCatalogRepository(Ref ref) {
//   return LocationCatalogRepositoryImpl(ref.watch(locationCatalogDataSourceProvider));
// }

// //TODO: убрать хардкод где в далеком будущем
// @riverpod
// Future<List<StreetModel>> cityStreets(Ref ref, String cityKey) {
//   return ref.watch(locationCatalogRepositoryProvider).getStreetsForCity('omsk');
// }

// @riverpod
// AppLocalizations l10n(Ref ref) {
//   return lookupAppLocalizations(WidgetsBinding.instance.platformDispatcher.locale);
// }
