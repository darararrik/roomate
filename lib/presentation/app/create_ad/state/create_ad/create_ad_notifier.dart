import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/data/datasources/remote/mocks/create_ad_mock_data_source.dart';
import 'package:roomate/data/dto/tags_group_dto/tags_group_dto.dart';
import 'package:roomate/domain/enums/currency_enum.dart';
import 'package:roomate/domain/enums/selection_step_key_enum.dart';
import 'package:roomate/domain/models/tags_group_model.dart';
import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_state.dart';

part 'create_ad_notifier.g.dart';

@riverpod
Future<List<TagsGroupModel>> categories(Ref ref, SelectionStepKey key) async {
  final dtos = await CreateAdMock.getSelectionCategories(key);
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
    required bool isRadio,
  }) {
    // 1. Копируем текущую мапу тегов
    final newTags = Map<SelectionStepKey, List<TagsGroupModel>>.from(state.selectedTags);

    // 2. Достаем список групп для шага
    final stepGroups = List<TagsGroupModel>.from(newTags[stepKey] ?? []);

    // 3. Находим нужную категорию
    final index = stepGroups.indexWhere((g) => g.title == categoryTitle);

    if (index != -1) {
      final group = stepGroups[index];
      final currentTags = List<String>.from(group.tags);

      if (isSelected) {
        if (isRadio) {
          currentTags.clear();
          currentTags.add(tag);
        } else {
          if (!currentTags.contains(tag)) currentTags.add(tag);
        }
      } else {
        currentTags.remove(tag);
      }

      stepGroups[index] = group.copyWith(tags: currentTags);
    } else {
      if (isSelected) {
        stepGroups.add(TagsGroupModel(title: categoryTitle, tags: [tag], isRadio: isRadio));
      }
    }

    newTags[stepKey] = stepGroups;

    // 4. Обновляем общий стейт через copyWith
    state = state.copyWith(selectedTags: newTags);
  }

  // Метод валидации теперь обращается к state.selectedTags
  bool isStepValueSelected(SelectionStepKey key) {
    final stepData = state.selectedTags[key];
    if (stepData == null || stepData.isEmpty) return false;
    return stepData.any((group) => group.tags.isNotEmpty);
  }
}
