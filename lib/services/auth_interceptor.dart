import 'package:data/constants/api_key.dart';
import 'package:dio/dio.dart';
import 'package:domain/repository/token_repository.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor(this.tokenRepository);
  final ITokenRepository tokenRepository;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.extra[ApiKeyConstants.requiresAuth] == true) {
      final token = await tokenRepository.getToken();
      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
      }
    }
    return handler.next(options);
  }
}
