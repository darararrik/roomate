import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_application_model.freezed.dart';

@freezed
sealed class GroupApplicationModel with _$GroupApplicationModel {
  const factory GroupApplicationModel({
    @Default('') String id,
    @Default('') String groupId,
    @Default('') String status,
    @Default('') String createdAt,
  }) = _GroupApplicationModel;
}
