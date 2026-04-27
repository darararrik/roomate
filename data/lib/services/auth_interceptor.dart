import 'package:dio/dio.dart';

import 'package:data/constants/api_key.dart';
import 'package:data/entity/auth_response/auth_response_data.dart';
import 'package:data/services/token_service.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor({required this.tokenService, required String baseUrl})
    : _refreshDio = Dio(BaseOptions(baseUrl: baseUrl));
  final Dio _refreshDio;
  final TokenService tokenService;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.extra[ApiKeyConstants.requiresAuth] == true) {
      final token = await tokenService.getAccessToken();
      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
      }
    }
    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // 1. Проверяем, что ошибка — это 401 (токен протух)
    if (err.response?.statusCode == 401) {
      try {
        // 2. Делаем запрос на обновление токена (используйте отдельный экземпляр Dio!)
        String newToken = await _refreshToken();

        // 3. Обновляем заголовки в упавшем запросе
        err.requestOptions.headers['Authorization'] = 'Bearer $newToken';

        // 4. Повторяем запрос с новыми данными
        final response = await _refreshDio.fetch(err.requestOptions);
        return handler.resolve(response);
      } catch (e) {
        // Если refresh тоже упал (например, Refresh Token истек), разлогиниваем пользователя
        return handler.next(err);
      }
    }
    return handler.next(err);
  }

  Future<String> _refreshToken() async {
    final refreshToken = await tokenService.getRefreshToken();

    final response = await _refreshDio.post(
      '/auth/refresh',
      data: {'refreshToken': refreshToken},
      options: Options(extra: {ApiKeyConstants.requiresAuth: false}),
    );
    final data = AuthResponseData.fromJson(response.data);

    await tokenService.saveTokens(data.accessToken!, data.refreshToken!);

    return data.accessToken!;
  }
}
