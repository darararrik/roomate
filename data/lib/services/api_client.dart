import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shared/shared.dart';
import 'package:talker/talker.dart';

import 'package:data/constants/api_key.dart';
import 'package:data/utils/extensions/map_dio_exc.dart';

typedef ResponseTransformer<T> = T Function(dynamic json);

class ApiClient {
  ApiClient(this._dio, this._talker);
  final Dio _dio;
  final Talker _talker;

  Future<Either<RemoteException, T>> request<T>({
    required String path,
    required String method,
    dynamic body,
    Map<String, dynamic>? query,
    Map<String, String>? headers,
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

      final result = transformer != null
          ? transformer(response.data)
          : response.data as T;

      return Right(result);
    } on DioException catch (e, st) {
      _talker.handle(e, st, 'API request failed: $method $path');
      return Left(e.toRemoteException());
    } catch (e, st) {
      _talker.handle(e, st, 'API response parsing failed: $method $path');
      return Left(
        RemoteException(kind: RemoteExceptionKind.unknown, rootException: e),
      );
    }
  }

  Future<Either<RemoteException, T>> get<T>(
    String path, {
    Map<String, dynamic>? query,
    bool needAuth = false,
    ResponseTransformer<T>? transformer,
  }) {
    return request(
      path: path,
      method: 'GET',
      query: query,
      needAuth: needAuth,
      transformer: transformer,
    );
  }

  Future<Either<RemoteException, T>> post<T>(
    String path, {
    dynamic body,
    bool needAuth = false,
    ResponseTransformer<T>? transformer,
  }) {
    return request(
      path: path,
      method: 'POST',
      body: body,
      needAuth: needAuth,
      transformer: transformer,
    );
  }

  Future<Either<RemoteException, T>> put<T>(
    String path, {
    dynamic body,
    bool needAuth = false,
    ResponseTransformer<T>? transformer,
  }) {
    return request(
      path: path,
      method: 'PUT',
      body: body,
      needAuth: needAuth,
      transformer: transformer,
    );
  }

  Future<Either<RemoteException, T>> delete<T>(
    String path, {
    dynamic body,
    bool needAuth = false,
    ResponseTransformer<T>? transformer,
  }) {
    return request(
      path: path,
      method: 'DELETE',
      body: body,
      needAuth: needAuth,
      transformer: transformer,
    );
  }
}

enum RestMethod { get, post, put, delete }
