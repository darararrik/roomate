import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_error.freezed.dart';

@freezed
sealed class ServerError with _$ServerError {
  const factory ServerError({
    int? generalServerStatusCode,
    String? generalServerErrorId,
    Map<String, dynamic>? generalMessages,
  }) = _ServerError;
}
