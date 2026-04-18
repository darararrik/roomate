import 'package:data/entity/server_error/server_error.dart';
import 'package:shared/shared.dart';

class RemoteException extends AppException {
  const RemoteException({
    required this.kind,
    this.httpErrorCode,
    this.serverError,
    this.rootException,
  }) : super(AppExceptionType.remote);

  final RemoteExceptionKind kind;
  final int? httpErrorCode;
  final ServerError? serverError;
  final Object? rootException;

  int get generalServerStatusCode => serverError?.generalServerStatusCode ?? -1;

  String? get generalServerErrorId => serverError?.generalServerErrorId ?? '';

  Map<String, dynamic>? get generalMessages => serverError?.generalMessages ?? {};

  @override
  String toString() {
    return '''RemoteException: {
      kind: $kind
      httpErrorCode: $httpErrorCode,
      serverError: $serverError,
      rootException: $rootException,
      generalServerMessage: $generalMessages,
      generalServerErrorCode: $generalServerStatusCode,
      generalServerErrorId: $generalServerErrorId,
      stackTrace: ${rootException is Error ? (rootException as Error).stackTrace : ''}
}''';
  }
}

enum RemoteExceptionKind {
  unauthorized,
  noInternet,

  /// host not found, cannot connect to host, SocketException
  network,

  /// server has defined response
  serverDefined,

  /// server has not defined response
  serverUndefined,

  /// Caused by an incorrect certificate as configured by [ValidateCertificate]
  badCertificate,

  refreshTokenFailed,
  timeout,
  cancellation,
  unknown,
}
