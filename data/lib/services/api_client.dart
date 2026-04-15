import 'package:dio/dio.dart';

import 'package:data/constants/api_key.dart';

typedef ResponseTransformer<T> = T Function(dynamic json);

class ApiClient {
  ApiClient(this._dio);
  final Dio _dio;

  Future<T> request<T>({
    required String path,
    required String method,
    dynamic body,
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers, // Добавил для гибкости
    bool needAuth = false,
    ResponseTransformer<T>? transformer,
  }) async {
    try {
      final response = await _dio.request(
        path,
        data: body,
        queryParameters: query,
        options: Options(
          method: method,
          headers: headers,
          extra: {ApiKeyConstants.requiresAuth: needAuth},
        ),
      );

      // Если есть трансформер — используем его
      if (transformer != null) {
        return transformer(response.data);
      }

      // Если трансформера нет, пытаемся привести к T.
      // Если T это void, вернется null.
      return response.data as T;
    } on DioException {
      // Перебрасываем DioException, чтобы DataSource мог его обработать через dartz
      rethrow;
    } catch (e) {
      throw Exception('Unexpected error: $e');
    }
  }

  // В хелперы ОБЯЗАТЕЛЬНО добавляем bool needAuth
  Future<T> get<T>(
    String path, {
    Map<String, dynamic>? query,
    bool needAuth = false, // <--- Добавлено
    ResponseTransformer<T>? transformer,
  }) => request(
    path: path,
    method: 'GET',
    query: query,
    needAuth: needAuth,
    transformer: transformer,
  );

  Future<T> post<T>(
    String path, {
    dynamic body,
    bool needAuth = false, // <--- Добавлено
    ResponseTransformer<T>? transformer,
  }) =>
      request(path: path, method: 'POST', body: body, needAuth: needAuth, transformer: transformer);

  // Не забудь про PUT и DELETE для полноты картины
  Future<T> put<T>(
    String path, {
    dynamic body,
    bool needAuth = false,
    ResponseTransformer<T>? transformer,
  }) =>
      request(path: path, method: 'PUT', body: body, needAuth: needAuth, transformer: transformer);
}
