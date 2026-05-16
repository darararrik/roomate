import 'dart:convert';

import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/di/di.dart';

const _createAdDraftKey = 'create_ad_draft';
const _createGroupDraftKey = 'create_group_draft';

final createDraftServiceProvider = Provider<CreateDraftService>((ref) {
  return CreateDraftService(ref.watch(preferencesServiceProvider));
});

final createAdDraftProvider = FutureProvider<CreateAdFormModel?>((ref) async {
  return ref.watch(createDraftServiceProvider).loadAdDraft();
});

final createGroupDraftProvider = FutureProvider<CreateGroupFormModel?>((
  ref,
) async {
  return ref.watch(createDraftServiceProvider).loadGroupDraft();
});

class CreateDraftService {
  const CreateDraftService(this._preferencesService);

  final PreferencesService _preferencesService;

  Future<CreateAdFormModel?> loadAdDraft() async {
    return _loadDraft(
      _createAdDraftKey,
      (json) => CreateAdFormModel.fromJson(json),
    );
  }

  Future<void> saveAdDraft(CreateAdFormModel draft) {
    return _saveDraft(_createAdDraftKey, draft.toJson());
  }

  Future<void> clearAdDraft() {
    return _preferencesService.remove(_createAdDraftKey);
  }

  Future<CreateGroupFormModel?> loadGroupDraft() async {
    return _loadDraft(
      _createGroupDraftKey,
      (json) => CreateGroupFormModel.fromJson(json),
    );
  }

  Future<void> saveGroupDraft(CreateGroupFormModel draft) {
    return _saveDraft(_createGroupDraftKey, draft.toJson());
  }

  Future<void> clearGroupDraft() {
    return _preferencesService.remove(_createGroupDraftKey);
  }

  Future<T?> _loadDraft<T>(
    String key,
    T Function(Map<String, dynamic> json) fromJson,
  ) async {
    final rawValue = await _preferencesService.getString(key);
    if (rawValue == null || rawValue.isEmpty) {
      return null;
    }

    try {
      final json = jsonDecode(rawValue);
      if (json is! Map<String, dynamic>) {
        await _preferencesService.remove(key);
        return null;
      }

      return fromJson(json);
    } catch (_) {
      await _preferencesService.remove(key);
      return null;
    }
  }

  Future<void> _saveDraft(String key, Map<String, dynamic> json) {
    return _preferencesService.setString(key, jsonEncode(json));
  }
}
