import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_error.freezed.dart';
part 'server_error.g.dart';

@freezed
sealed class ServerError with _$ServerError {
  const factory ServerError({int? status, String? error, String? message, String? path}) =
      _ServerError;
  factory ServerError.fromJson(Map<String, dynamic> json) => _$ServerErrorFromJson(json);
}
