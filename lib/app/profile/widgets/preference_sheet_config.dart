import 'package:domain/models/common/option_model.dart';
import 'package:domain/models/preferences_tags/selected_user_preferences_model.dart';

class PreferenceSheetConfig {
  const PreferenceSheetConfig({
    required this.title,
    required this.options,
    required this.selectedIds,
    required this.isMulti,
    required this.updatePreferences,
  });

  final String title;
  final List<OptionModel> options;
  final List<int> selectedIds;
  final bool isMulti;
  final SelectedUserPreferencesModel Function(
    SelectedUserPreferencesModel preferences,
    List<int> selectedIds,
  )
  updatePreferences;
}
