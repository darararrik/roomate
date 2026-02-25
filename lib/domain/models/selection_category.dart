// domain/models/ad_field_config.dart

sealed class AdFieldConfig {
  const AdFieldConfig({
    required this.id,
    required this.title,
    this.description,
  });
  final String id; // Важно для маппинга стейта (например, "apartment_area")
  final String title;
  final String? description;
}

// 1. Поле для тегов (твой SelectableTagGroup)
class TagGroupField extends AdFieldConfig {
  // Можно ли выбрать только один

  const TagGroupField({
    required super.id,
    required super.title,
    super.description,
    required this.tags,
    this.isRadio = false,
  });
  final List<String> tags;
  final bool isRadio;
}

// 2. Поле для текстового/числового ввода (твой TextFieldWithTitle)
class InputField extends AdFieldConfig {
  // Например, "м²" или "₽"

  const InputField({
    required super.id,
    required super.title,
    super.description,
    required this.hintText,
    this.isNumeric = false,
    this.suffix,
  });
  final String hintText;
  final bool isNumeric;
  final String? suffix;
}

// lib/domain/models/ad_field_config.dart

// ... (остальные классы)

class MediaField extends AdFieldConfig {
  const MediaField({
    required super.id,
    required super.title,
    required this.isPhoto,
    super.description,
  });
  final bool isPhoto;
}

class AddressField extends AdFieldConfig {
  const AddressField({
    required super.id,
    required super.title,
    super.description,
  });
}
