import 'package:data/data.dart';
import 'package:domain/domain.dart';

abstract class GroupDetailPreferencesMapper {
  static List<GroupPreferenceItemModel> toApartmentLifestyle(
    GroupDetailPreferencesData dto,
  ) {
    return [
      _toPreferenceItem(dto.communication, 'Общительность'),
      _toPreferenceItem(dto.sleep, 'Режим сна'),
      _toPreferenceItem(dto.badHabits, 'Вредные привычки'),
      _toPreferenceItem(dto.guests, 'Гости'),
    ].whereType<GroupPreferenceItemModel>().toList();
  }

  static List<GroupPreferenceItemModel> toApartmentAtmosphere(
    GroupDetailPreferencesData dto,
  ) {
    return [
      _toPreferenceItem(dto.noiseLevel, 'Уровень шума'),
      _toPreferenceItem(dto.cleaning, 'Уборка'),
      _toPreferenceItem(dto.pets, 'Домашние животные'),
      _toPreferenceItem(dto.petsAttitude, 'Отношение к животным'),
    ].whereType<GroupPreferenceItemModel>().toList();
  }

  static GroupPreferenceItemModel? _toPreferenceItem(
    OptionData? option,
    String title,
  ) {
    if (option == null) {
      return null;
    }

    final value = option.title ?? '';
    if (value.trim().isEmpty) {
      return null;
    }

    return GroupPreferenceItemModel(title: title, value: value);
  }
}
