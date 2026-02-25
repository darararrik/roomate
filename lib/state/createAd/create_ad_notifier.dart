import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/domain/enums/currency_enum.dart';
import 'package:roomate/domain/enums/selection_step_key_enum.dart';
import 'package:roomate/domain/models/selection_category.dart';
import 'package:roomate/state/DI/di.dart';
import 'package:roomate/state/createAd/create_ad_state.dart'; // Провайдер репозитория

part 'create_ad_notifier.g.dart';

/// Провайдер полей для конкретного шага (типизированный!)
@riverpod
Future<List<AdFieldConfig>> stepFields(Ref ref, SelectionStepKey key) async {
  final repo = ref.watch(adRepositoryProvider);
  return repo.getFields(key);
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

  /// Универсальный метод для обновления простых значений (текст, число, адрес)
  void updateFieldValue(String fieldId, dynamic value) {
    state = state.copyWith(formValues: {...state.formValues, fieldId: value});
  }

  /// Специальный метод для адреса (чтобы обновлялось и в мапе, и в отдельном поле для удобства)
  void setAddress(String address) {
    state = state.copyWith(address: address);
    updateFieldValue('main_address', address);
  }

  /// Обновление тегов (Checkbox или Radio)
  void updateDynamicTags({
    required String fieldId,
    required String tag,
    required bool isSelected,
    required bool isRadio,
  }) {
    final currentVal = state.formValues[fieldId];
    List<String> currentTags = currentVal is List
        ? List<String>.from(currentVal)
        : [];

    if (isRadio) {
      currentTags = isSelected ? [tag] : [];

      // Если это поле валюты — обновляем и специальный Enum в стейте
      if (fieldId == 'currency') {
        _syncCurrency(tag);
      }
    } else {
      if (isSelected) {
        if (!currentTags.contains(tag)) currentTags.add(tag);
      } else {
        currentTags.remove(tag);
      }
    }

    updateFieldValue(fieldId, currentTags);
  }

  /// Вспомогательный метод для синхронизации Enum валюты
  void _syncCurrency(String tag) {
    final currency = switch (tag) {
      "Доллары" => Currency.usd,
      "Евро" => Currency.eur,
      _ => Currency.rub,
    };
    state = state.copyWith(selectedCurrency: currency);
  }

  /// Валидация: проверим, заполнены ли обязательные поля для текущего списка конфигов
  bool isStepValid(List<AdFieldConfig> stepConfigs) {
    for (final config in stepConfigs) {
      final value = state.formValues[config.id];

      // Простая проверка: если значение null или пустой список/строка
      if (value == null) return false;
      if (value is String && value.isEmpty) return false;
      if (value is List && value.isEmpty) return false;
    }
    return true;
  }
}
