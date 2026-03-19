import 'package:roomate/domain/models/user_tag_model.dart';

class ProfileStaticDataSource {
  static List<UserTagsGroupModel> getStaticTags() {
    return [
      const UserTagsGroupModel(
        groupId: 'interests',
        groupTitle: 'Интересы',
        tags: [
          UserTagModel(id: 1, title: 'Спорт'),
          UserTagModel(id: 2, title: 'Музыка'),
          UserTagModel(id: 3, title: 'Кино'),
          UserTagModel(id: 4, title: 'Путешествия'),
          UserTagModel(id: 5, title: 'Гейминг'),
          UserTagModel(id: 6, title: 'Чтение'),
          UserTagModel(id: 7, title: 'Кулинария'),
          UserTagModel(id: 8, title: 'Искусство'),
        ],
      ),
      const UserTagsGroupModel(
        groupId: 'habits',
        groupTitle: 'Привычки',
        tags: [
          UserTagModel(id: 101, title: 'Не курю'),
          UserTagModel(id: 102, title: 'Пью кофе'),
          UserTagModel(id: 103, title: 'Рано встаю'),
          UserTagModel(id: 104, title: 'Поздно ложусь'),
          UserTagModel(id: 105, title: 'Люблю чистоту'),
        ],
      ),
      const UserTagsGroupModel(
        groupId: 'pets',
        groupTitle: 'Домашние животные',
        tags: [
          UserTagModel(id: 201, title: 'Есть собака'),
          UserTagModel(id: 202, title: 'Есть кошка'),
          UserTagModel(id: 203, title: 'Нет животных'),
          UserTagModel(id: 204, title: 'Люблю животных'),
        ],
      ),
    ];
  }
}
