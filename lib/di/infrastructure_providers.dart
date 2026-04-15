import 'package:flutter/material.dart';

import 'package:data/services/api_client.dart';
import 'package:data/services/network_module.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker/talker.dart';

import 'package:roomate/lib.dart';
import 'package:roomate/services/auth_interceptor.dart';
import 'di.dart';

part 'infrastructure_providers.g.dart';

@Riverpod(keepAlive: true)
Talker talker(Ref ref) => Talker();

@Riverpod(keepAlive: true)
ApiClient apiClient(Ref ref) {
  final talker = ref.watch(talkerProvider);
  final tokenRepo = ref.watch(tokenRepositoryProvider);
  final url = const String.fromEnvironment('api_base_url', defaultValue: 'http://192.168.3.2:8080');

  final dio = NetworkModule.createDio(
    baseUrl: url,
    talker: talker,
    authInterceptor: AuthInterceptor(tokenRepo),
  );

  return ApiClient(dio);
}

@riverpod
AppLocalizations l10n(Ref ref) {
  return lookupAppLocalizations(WidgetsBinding.instance.platformDispatcher.locale);
}
