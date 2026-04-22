import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shared/exception/remote_exception.dart';

import 'package:data/entity/server_error/server_error.dart';

extension DioExceptionMapper on DioException {
  RemoteException toRemoteException() {
    RemoteExceptionKind kind;
    ServerError? serverError;

    // 1. Парсинг ошибки сервера
    if (response?.data != null && response?.data is Map<String, dynamic>) {
      try {
        serverError = ServerError.fromJson(response!.data);
      } catch (_) {}
    }

    // 2. Определение типа ошибки
    switch (type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        kind = RemoteExceptionKind.timeout;
        break;

      case DioExceptionType.connectionError:
        kind = RemoteExceptionKind.network;
        break;

      case DioExceptionType.badCertificate:
        kind = RemoteExceptionKind.badCertificate;
        break;

      case DioExceptionType.cancel:
        kind = RemoteExceptionKind.cancellation;
        break;

      case DioExceptionType.badResponse:
        final statusCode = response?.statusCode;

        if (statusCode == 401) {
          kind = RemoteExceptionKind.unauthorized;
        } else if (serverError != null) {
          kind = RemoteExceptionKind.serverDefined;
        } else {
          kind = RemoteExceptionKind.serverUndefined;
        }
        break;

      default:
        if (error is SocketException) {
          kind = RemoteExceptionKind.noInternet;
        } else {
          kind = RemoteExceptionKind.unknown;
        }
    }

    return RemoteException(
      kind: kind,
      httpErrorCode: response?.statusCode,
      serverError: serverError,
      rootException: this,
    );
  }
}
