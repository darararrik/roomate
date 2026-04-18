import 'package:data/services/api_client.dart';
import 'package:data/services/auth_interceptor.dart';
import 'package:data/services/network_module.dart';
import 'package:data/services/token_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/config/config.dart';
import 'package:roomate/lib.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'infrastructure_providers.g.dart';

@Riverpod(keepAlive: true)
AppConfig config(Ref ref) {
  const flavor = String.fromEnvironment('flavor', defaultValue: 'dev');
  switch (flavor) {
    case 'prod':
      return AppConfig.prod();
    default:
      return AppConfig.dev();
  }
}

@riverpod
AppLocalizations l10n(Ref ref) {
  return lookupAppLocalizations(WidgetsBinding.instance.platformDispatcher.locale);
}

@Riverpod(keepAlive: true)
Talker talker(Ref ref) =>
    TalkerFlutter.init(settings: TalkerSettings(useHistory: true, maxHistoryItems: 50));

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final talker = ref.watch(talkerProvider);
  final config = ref.watch(configProvider);
  return NetworkModule.createDio(
    baseUrl: config.baseUrl,
    talker: talker,
    authInterceptor: AuthInterceptor(ref.watch(tokenServiceProvider)),
  );
}

@Riverpod(keepAlive: true)
ApiClient apiClient(Ref ref) {
  return ApiClient(ref.watch(dioProvider));
}

@Riverpod(keepAlive: true)
TokenService tokenService(Ref ref) {
  return TokenService();
}
