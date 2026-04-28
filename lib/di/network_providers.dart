import 'package:data/services/api_client.dart';
import 'package:data/services/app_status_storage_service.dart';
import 'package:data/services/auth_interceptor.dart';
import 'package:data/services/network_module.dart';
import 'package:data/services/preferences_service.dart';
import 'package:data/services/token_service.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'app_providers.dart';
import 'diagnostics_providers.dart';

part 'network_providers.g.dart';

// Network providers:
// Keep Dio, Retrofit/API clients, interceptors, token/session services, and
// transport-related dependencies here.

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final talker = ref.watch(talkerProvider);
  final config = ref.watch(configProvider);
  return NetworkModule.createDio(
    baseUrl: config.baseUrl,
    talker: talker,
    authInterceptor: AuthInterceptor(
      tokenService: ref.watch(tokenServiceProvider),
      baseUrl: config.baseUrl,
    ),
  );
}

@Riverpod(keepAlive: true)
ApiClient apiClient(Ref ref) {
  return ApiClient(ref.watch(dioProvider), ref.watch(talkerProvider));
}

@Riverpod(keepAlive: true)
TokenService tokenService(Ref ref) {
  final config = ref.watch(configProvider);
  return TokenService(namespace: config.mode.name);
}

@Riverpod(keepAlive: true)
PreferencesService preferencesService(Ref ref) {
  return PreferencesService();
}

@Riverpod(keepAlive: true)
AppStatusStorageService appStatusStorageService(Ref ref) {
  final config = ref.watch(configProvider);
  return AppStatusStorageService(
    ref.watch(preferencesServiceProvider),
    namespace: config.mode.name,
  );
}
