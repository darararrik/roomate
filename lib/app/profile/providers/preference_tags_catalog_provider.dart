import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/di/di.dart';

part 'preference_tags_catalog_provider.g.dart';

@Riverpod(keepAlive: true)
Future<PreferenceTagsCatalogModel> preferenceTagsCatalog(Ref ref) async {
  final result = await ref
      .read(profileRepositoryProvider)
      .fetchPreferenceTagsCatalog();

  return result.fold((error) => throw error, (tags) => tags);
}
