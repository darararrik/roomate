class SelectionCategory {
  const SelectionCategory({
    required this.title,
    this.description,
    required this.tags,
  });
  final String title;
  final String? description;
  final List<String> tags;
}
