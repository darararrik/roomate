import 'package:roomate/domain/models/tag_model.dart';

class ProfileStaticDataSource {
  static List<TagGroupModel> getStaticTags() {
    return [
      const TagGroupModel(
        groupId: 'interests',
        groupTitle: 'Интересы',
        tags: [
          TagModel(id: 1, title: 'Спорт'),
          TagModel(id: 2, title: 'Музыка'),
          TagModel(id: 3, title: 'Кино'),
          TagModel(id: 4, title: 'Путешествия'),
          TagModel(id: 5, title: 'Гейминг'),
          TagModel(id: 6, title: 'Чтение'),
          TagModel(id: 7, title: 'Кулинария'),
          TagModel(id: 8, title: 'Искусство'),
        ],
      ),
      const TagGroupModel(
        groupId: 'habits',
        groupTitle: 'Привычки',
        tags: [
          TagModel(id: 101, title: 'Не курю'),
          TagModel(id: 102, title: 'Пью кофе'),
          TagModel(id: 103, title: 'Рано встаю'),
          TagModel(id: 104, title: 'Поздно ложусь'),
          TagModel(id: 105, title: 'Люблю чистоту'),
        ],
      ),
      const TagGroupModel(
        groupId: 'pets',
        groupTitle: 'Домашние животные',
        tags: [
          TagModel(id: 201, title: 'Есть собака'),
          TagModel(id: 202, title: 'Есть кошка'),
          TagModel(id: 203, title: 'Нет животных'),
          TagModel(id: 204, title: 'Люблю животных'),
        ],
      ),
    ];
  }
}
