import 'package:data/entity/group_list_item/group_list_item_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'groups_response_data.freezed.dart';
part 'groups_response_data.g.dart';

@freezed
abstract class GroupsResponseData with _$GroupsResponseData {
  factory GroupsResponseData({
    @JsonKey(name: 'total_count') @Default(0) int totalCount,
    @JsonKey(name: 'items') @Default([]) List<GroupListItemData> items,
  }) = _GroupsResponseData;

  factory GroupsResponseData.fromJson(Map<String, dynamic> json) =>
      _$GroupsResponseDataFromJson(json);
}
