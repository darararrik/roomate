import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:roomate/domain/models/selection_category.dart';

part 'ad_field_dto.freezed.dart';
part 'ad_field_dto.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class AdFieldDto with _$AdFieldDto {
  // 1. Теги
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AdFieldDto.tagGroup({
    required String id,
    required String title,
    String? description,
    required List<String> tags,
    @Default(false) bool isRadio,
  }) = _TagGroupDto;

  // 2. Инпуты
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AdFieldDto.input({
    required String id,
    required String title,
    String? description,
    required String hintText,
    @Default(false) bool isNumeric,
    String? suffix,
  }) = _InputDto;

  // 3. Адрес
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AdFieldDto.address({
    required String id,
    required String title,
    String? description,
  }) = _AddressDto;

  // 4. Медиа
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AdFieldDto.media({
    required String id,
    required String title,
    String? description,
    required bool isPhoto,
  }) = _MediaDto;

  factory AdFieldDto.fromJson(Map<String, dynamic> json) =>
      _$AdFieldDtoFromJson(json);
}

/// Расширение для маппинга в Domain модель
extension AdFieldDtoX on AdFieldDto {
  AdFieldConfig toDomain() {
    return map(
      tagGroup: (d) => TagGroupField(
        id: d.id,
        title: d.title,
        description: d.description,
        tags: d.tags,
        isRadio: d.isRadio,
      ),
      input: (d) => InputField(
        id: d.id,
        title: d.title,
        description: d.description,
        hintText: d.hintText,
        isNumeric: d.isNumeric,
        suffix: d.suffix,
      ),
      address: (d) =>
          AddressField(id: d.id, title: d.title, description: d.description),
      media: (d) => MediaField(
        id: d.id,
        title: d.title,
        description: d.description,
        isPhoto: d.isPhoto,
      ),
    );
  }
}
