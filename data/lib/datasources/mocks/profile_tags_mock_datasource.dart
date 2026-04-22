// class ProfileTagsMockDataSource {
//   List<TagGroupModel> fetchTagsAboutSelf() {
//     return ProfileTagsMockJson.fetchTagsAboutSelf
//         .map(_toGroup)
//         .toList(growable: false);
//   }

//   TagGroupModel _toGroup(Map<String, dynamic> json) {
//     final tagsJson = (json["tags"] as List<dynamic>)
//         .cast<Map<String, dynamic>>();
//     return TagGroupModel(
//       groupTitle: json["group_title"] as String? ?? "",
//       tags: tagsJson.map(_toTag).toList(growable: false),
//     );
//   }

//   TagModel _toTag(Map<String, dynamic> json) {
//     return TagModel(
//       id: (json["id"] as num?)?.toInt() ?? 0,
//       title: json["title"] as String? ?? "",
//     );
//   }
// }
