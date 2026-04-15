import 'package:dio/dio.dart';
import 'package:talker/talker.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

class NetworkModule {
  static Dio createDio({
    required String baseUrl,
    required Talker talker,
    Interceptor? authInterceptor,
  }) {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        headers: {"Content-Type": "application/json"},
      ),
    );

    dio.interceptors.addAll([
      ?authInterceptor,
      TalkerDioLogger(
        talker: talker,
        settings: const TalkerDioLoggerSettings(
          printRequestHeaders: true,
          printResponseMessage: true,
        ),
      ),
    ]);
    // dio.httpClientAdapter = IOHttpClientAdapter(
    //   createHttpClient: () {
    //     final client = HttpClient();
    //     client.badCertificateCallback = (cert, host, port) => true;
    //     return client;
    //   },
    // );

    return dio;
  }
}
