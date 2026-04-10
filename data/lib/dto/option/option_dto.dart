import 'package:freezed_annotation/freezed_annotation.dart';

part 'option_dto.freezed.dart';
part 'option_dto.g.dart';

@freezed
sealed class OptionDto with _$OptionDto {
  const factory OptionDto({@JsonKey(name: 'id') int? id, @JsonKey(name: 'title') String? title}) =
      _OptionDto;

  factory OptionDto.fromJson(Map<String, dynamic> json) => _$OptionDtoFromJson(json);
}
