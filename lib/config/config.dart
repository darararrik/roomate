enum AppMode { live, mock }

// Toggle mock mode here and apply hot restart.
const bool kUseMocks = false;
const String kApiBaseUrl = 'http://192.168.3.2:8080/api';

class AppConfig {
  const AppConfig({
    required this.baseUrl,
    required this.enableLogs,
    required this.mode,
  });

  factory AppConfig.current({bool useMocks = false}) {
    return AppConfig(
      baseUrl: kApiBaseUrl,
      enableLogs: true,
      mode: useMocks ? AppMode.mock : AppMode.live,
    );
  }

  final String baseUrl;
  final bool enableLogs;
  final AppMode mode;

  bool get useMocks => mode == AppMode.mock;
}
