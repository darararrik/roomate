import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/di/profile_use_case_providers.dart';

part 'preference_tags_catalog_provider.g.dart';

@Riverpod(keepAlive: true)
Future<PreferenceTagsCatalogModel> preferenceTagsCatalog(Ref ref) async {
  final result = await ref.read(fetchPreferenceTagsCatalogUseCaseProvider).call();

  if (result.error != null) {
    throw result.error!;
  }

  return result.tags;
}
