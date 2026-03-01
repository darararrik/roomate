class TagsGroupModel {
  const TagsGroupModel({
    required this.title,
    this.description,
    required this.tags,
  });
  final String title;
  final String? description;
  final List<String> tags;
}
