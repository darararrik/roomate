import 'package:freezed_annotation/freezed_annotation.dart';

part 'street_dto.freezed.dart';
part 'street_dto.g.dart';

@freezed
sealed class StreetDto with _$StreetDto {
  const factory StreetDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'district') String? district,
    @JsonKey(name: 'region_line') String? regionLine,
  }) = _StreetDto;

  factory StreetDto.fromJson(Map<String, dynamic> json) =>
      _$StreetDtoFromJson(json);
}
