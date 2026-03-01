import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/data/datasources/remote/mock.dart';
import 'package:roomate/data/dto/tags_group_dto/tags_group_dto.dart';
import 'package:roomate/domain/enums/currency_enum.dart';
import 'package:roomate/domain/enums/selection_step_key_enum.dart';
import 'package:roomate/domain/models/tags_group_model.dart';
import 'package:roomate/state/createAd/create_ad_state.dart';

part 'create_ad_notifier.g.dart';

@riverpod
Future<List<TagsGroupModel>> categories(Ref ref, SelectionStepKey key) async {
  final dtos = await MockDataSource().getSelectionCategories(key);
  final model = dtos.map((e) => e.toDomain());
  return model.toList();
}

@riverpod
class CreateAdNotifier extends _$CreateAdNotifier {
  @override
  CreateAdState build() {
    return const CreateAdState();
  }

  void updateCurrency(String tag) {
    final currency = switch (tag) {
      "Рубли" => Currency.rub,
      "Доллары" => Currency.usd,
      "Евро" => Currency.eur,
      _ => Currency.rub,
    };

    state = state.copyWith(selectedCurrency: currency);
  }

  void updateCost(String cost) {
    state = state.copyWith(cost: cost);
  }

  void updateTags({
    required SelectionStepKey stepKey,
    required String categoryTitle,
    required String tag,
    required bool isSelected,
  }) {
    // 1. Копируем текущую мапу тегов
    final newTags = Map<SelectionStepKey, Map<String, List<String>>>.from(
      state.selectedTags,
    );

    // 2. Достаем/создаем данные для шага
    final stepMap = Map<String, List<String>>.from(newTags[stepKey] ?? {});

    // 3. Достаем/создаем список тегов в категории
    final categoryTags = List<String>.from(stepMap[categoryTitle] ?? []);

    if (isSelected) {
      if (!categoryTags.contains(tag)) categoryTags.add(tag);
    } else {
      categoryTags.remove(tag);
    }

    stepMap[categoryTitle] = categoryTags;
    newTags[stepKey] = stepMap;

    // 4. Обновляем общий стейт через copyWith
    state = state.copyWith(selectedTags: newTags);
  }

  // Метод валидации теперь обращается к state.selectedTags
  bool isStepValueSelected(SelectionStepKey key) {
    final stepData = state.selectedTags[key];
    if (stepData == null || stepData.isEmpty) return false;
    return stepData.values.any((tags) => tags.isNotEmpty);
  }
}
