import 'package:data/constants/api_key.dart';
import 'package:data/services/token_service.dart';
import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor(this.tokenService);
  final TokenService tokenService;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.extra[ApiKeyConstants.requiresAuth] == true) {
      final token = await tokenService.getAccessToken();
      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
      }
    }
    return handler.next(options);
  }
}
