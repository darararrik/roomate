class AppConfig {
  const AppConfig({required this.baseUrl, required this.enableLogs, required this.flavor});

  factory AppConfig.dev() {
    return const AppConfig(baseUrl: 'http://192.168.3.2:8080/api', enableLogs: true, flavor: 'dev');
  }

  factory AppConfig.prod() {
    return const AppConfig(baseUrl: 'https://api.myapp.com', enableLogs: true, flavor: 'prod');
  }
  final String baseUrl;
  final bool enableLogs;
  final String flavor;
}
