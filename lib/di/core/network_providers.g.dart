// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dio)
final dioProvider = DioProvider._();

final class DioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  DioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return dio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$dioHash() => r'33218803dfcd9e10a91cb0b47b5a5040c66fb8fb';

@ProviderFor(apiClient)
final apiClientProvider = ApiClientProvider._();

final class ApiClientProvider
    extends $FunctionalProvider<ApiClient, ApiClient, ApiClient>
    with $Provider<ApiClient> {
  ApiClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'apiClientProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$apiClientHash();

  @$internal
  @override
  $ProviderElement<ApiClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ApiClient create(Ref ref) {
    return apiClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ApiClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ApiClient>(value),
    );
  }
}

String _$apiClientHash() => r'73b5ba9f78c393b3fb55277881312bcbfd3c5f64';

@ProviderFor(chatSocketService)
final chatSocketServiceProvider = ChatSocketServiceProvider._();

final class ChatSocketServiceProvider
    extends
        $FunctionalProvider<
          ChatSocketService,
          ChatSocketService,
          ChatSocketService
        >
    with $Provider<ChatSocketService> {
  ChatSocketServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'chatSocketServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$chatSocketServiceHash();

  @$internal
  @override
  $ProviderElement<ChatSocketService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ChatSocketService create(Ref ref) {
    return chatSocketService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChatSocketService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ChatSocketService>(value),
    );
  }
}

String _$chatSocketServiceHash() => r'843bfaf05569925681fed956196fb4dc8562cfa6';

@ProviderFor(tokenService)
final tokenServiceProvider = TokenServiceProvider._();

final class TokenServiceProvider
    extends $FunctionalProvider<TokenService, TokenService, TokenService>
    with $Provider<TokenService> {
  TokenServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tokenServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tokenServiceHash();

  @$internal
  @override
  $ProviderElement<TokenService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TokenService create(Ref ref) {
    return tokenService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TokenService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TokenService>(value),
    );
  }
}

String _$tokenServiceHash() => r'6b28efffc9fe89e6732e46d397bee94be270afcf';

@ProviderFor(preferencesService)
final preferencesServiceProvider = PreferencesServiceProvider._();

final class PreferencesServiceProvider
    extends
        $FunctionalProvider<
          PreferencesService,
          PreferencesService,
          PreferencesService
        >
    with $Provider<PreferencesService> {
  PreferencesServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'preferencesServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$preferencesServiceHash();

  @$internal
  @override
  $ProviderElement<PreferencesService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PreferencesService create(Ref ref) {
    return preferencesService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PreferencesService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PreferencesService>(value),
    );
  }
}

String _$preferencesServiceHash() =>
    r'bdfaa27efe774d97d2f1cd677c45c7c46cade57c';

@ProviderFor(appStatusStorageService)
final appStatusStorageServiceProvider = AppStatusStorageServiceProvider._();

final class AppStatusStorageServiceProvider
    extends
        $FunctionalProvider<
          AppStatusStorageService,
          AppStatusStorageService,
          AppStatusStorageService
        >
    with $Provider<AppStatusStorageService> {
  AppStatusStorageServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appStatusStorageServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appStatusStorageServiceHash();

  @$internal
  @override
  $ProviderElement<AppStatusStorageService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AppStatusStorageService create(Ref ref) {
    return appStatusStorageService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppStatusStorageService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppStatusStorageService>(value),
    );
  }
}

String _$appStatusStorageServiceHash() =>
    r'73276f84aff67b7423a9c4c538021ae2d7c45c00';
