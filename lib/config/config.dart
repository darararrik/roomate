class AppConfig {
  const AppConfig({required this.baseUrl, required this.enableLogs});

  factory AppConfig.dev() {
    return const AppConfig(baseUrl: 'http://192.168.3.2:8080/api', enableLogs: true);
  }

  factory AppConfig.prod() {
    return const AppConfig(baseUrl: 'https://api.myapp.com', enableLogs: true);
  }
  final String baseUrl;
  final bool enableLogs;
}
