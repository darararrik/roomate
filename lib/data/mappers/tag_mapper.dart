import 'package:roomate/data/dto/user_tags/user_tag_data.dart';
import 'package:roomate/domain/models/user_tag_model.dart';

abstract class TagMapper {
  static UserTagModel toModel(UserTagData data) => UserTagModel(
    id: data.id ?? 0,
    title: data.title ?? '',
    isSelected: data.isSelected ?? false,
  );

  static UserTagData toData(UserTagModel model) => UserTagData(
    id: model.id,
    title: model.title,
    isSelected: model.isSelected,
  );
}
