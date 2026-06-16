import 'package:dio/dio.dart';
import 'package:talker/talker.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

class NetworkModule {
  static Dio createDio({required String baseUrl, required Talker talker, Interceptor? authInterceptor}) {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
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
          printRequestData: true,
          printErrorData: true,
          printErrorHeaders: true,
          printErrorMessage: true,
          printResponseData: true,
          printRequestExtra: true,
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
