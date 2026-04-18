import 'package:freezed_annotation/freezed_annotation.dart';

part 'option_data.freezed.dart';
part 'option_data.g.dart';

@freezed
sealed class OptionData with _$OptionData {
  const factory OptionData({@JsonKey(name: 'id') int? id, @JsonKey(name: 'title') String? title}) =
      _OptionData;

  factory OptionData.fromJson(Map<String, dynamic> json) => _$OptionDataFromJson(json);
}
