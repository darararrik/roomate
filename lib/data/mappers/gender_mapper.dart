import 'package:roomate/domain/enums/gender_enum.dart';

abstract class GenderMapper {
  static GenderEnum toModel(String gender) {
    return GenderEnum.values.firstWhere((e) => e.name == gender, orElse: () => GenderEnum.male);
  }

  static String toData(GenderEnum gender) {
    return gender.name;
  }
}
