import 'package:domain/domain.dart';

String resolvePreferenceTitle({
  required List<OptionModel> options,
  required int selectedId,
}) {
  if (selectedId == 0) {
    return '';
  }

  final titles = resolvePreferenceTitles(
    options: options,
    selectedIds: [selectedId],
  );

  return titles.isEmpty ? '' : titles.first;
}

String resolvePreferenceValue({
  required List<OptionModel> options,
  required List<int> selectedIds,
  String emptyTitle = '',
}) {
  final titles = resolvePreferenceTitles(
    options: options,
    selectedIds: selectedIds,
  );

  return titles.isEmpty ? emptyTitle : titles.join(', ');
}

List<String> resolvePreferenceTitles({
  required List<OptionModel> options,
  required List<int> selectedIds,
}) {
  if (selectedIds.isEmpty) {
    return const [];
  }

  final titlesById = {for (final option in options) option.id: option.title};

  return selectedIds
      .map((id) => titlesById[id] ?? '')
      .where((value) => value.trim().isNotEmpty)
      .toList();
}

List<GroupPreferenceItemModel> resolvePreferenceItems({
  required List<OptionModel> options,
  required List<int> selectedIds,
  required String title,
}) {
  final values = resolvePreferenceTitles(
    options: options,
    selectedIds: selectedIds,
  );

  if (values.isEmpty) {
    return const [];
  }

  return [GroupPreferenceItemModel(title: title, value: values.join(', '))];
}
