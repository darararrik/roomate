import 'package:data/services/api_client.dart';
import 'package:data/services/network_module.dart';
import 'package:data/services/token_service.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/services/auth_interceptor.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'infrastructure_providers.g.dart';

@Riverpod(keepAlive: true)
Talker talker(Ref ref) =>
    TalkerFlutter.init(settings: TalkerSettings(useHistory: true, maxHistoryItems: 50));

@Riverpod(keepAlive: true)
ApiClient apiClient(Ref ref) {
  final talker = ref.watch(talkerProvider);
  final url = const String.fromEnvironment(
    'api_base_url',
    defaultValue: 'http://192.168.3.2:8080/api',
  );

  final dio = NetworkModule.createDio(
    baseUrl: url,
    talker: talker,
    authInterceptor: AuthInterceptor(ref.watch(tokenServiceProvider)),
  );

  return ApiClient(dio);
}

@riverpod
AppLocalizations l10n(Ref ref) {
  return lookupAppLocalizations(WidgetsBinding.instance.platformDispatcher.locale);
}

@Riverpod(keepAlive: true)
TokenService tokenService(Ref ref) {
  return TokenService();
}
