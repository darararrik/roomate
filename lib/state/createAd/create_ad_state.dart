import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:roomate/domain/enums/currency_enum.dart';
import 'package:roomate/domain/utils/extensions/currency_x.dart';

part 'create_ad_state.freezed.dart';

@freezed
sealed class CreateAdState with _$CreateAdState {
  const factory CreateAdState({
    // Главное хранилище для всех динамических полей
    @Default({}) Map<String, dynamic> formValues,

    // Оставляем высокоуровневые поля для удобства бизнес-логики
    Currency? selectedCurrency,
    String? address,

    // Статус загрузки или ошибки (опционально, для UI)
    @Default(false) bool isSubmitting,
  }) = _CreateAdState;
}

extension CreateAdStateX on CreateAdState {
  // Геттеры для конкретных полей из твоего JSON мока

  // Площадь: возвращает строку или дефолтное значение
  String get area => formValues['apartment_area']?.toString() ?? '';

  // Количество комнат: достаем первый элемент из списка (если это radio)
  String get rooms =>
      (formValues['rooms_count'] as List<dynamic>?)?.first?.toString() ?? '—';

  // Этаж: комбинируем два инпута в одну строку
  String get floorLevel {
    final current = formValues['floor'] ?? '?';
    final total = formValues['total_floors'] ?? '?';
    return '$current / $total';
  }

  // Цена: берем из инпута и добавляем валюту
  String get formattedPrice {
    final price = formValues['price'] ?? '0';
    final symbol = selectedCurrency?.symbol ?? '₽';
    return '$price $symbol';
  }

  // Список тегов удобств (Amenities)
  List<String> get amenities =>
      List<String>.from(formValues['amenities'] ?? []);

  // Проверка: загружены ли фото
  bool get hasPhotos {
    final photos = formValues['photos_upload'] as List<dynamic>?;
    return photos != null && photos.isNotEmpty;
  }
}
