import 'package:roomate/data/dto/tags_group_dto/tags_group_dto.dart';
import 'package:roomate/domain/enums/selection_step_key_enum.dart';

mixin CreateAdMock {
  static Future<List<TagsGroupDto>> getSelectionCategories(SelectionStepKey key) async {
    final List<Map<String, dynamic>> jsonList = switch (key) {
      SelectionStepKey.rentType => _rentTypeJson,
      SelectionStepKey.roomType => _roomTypeJson,
      SelectionStepKey.propertyType => _propertyTypeJson,
      SelectionStepKey.propertiesApartment => _propertiesApartmentJson,
      SelectionStepKey.featuresFirst => _featuresFirstJson,
      SelectionStepKey.featuresSecond => _featuresSecondJson,
      SelectionStepKey.dealTerms => _dealTermsJson,
      SelectionStepKey.contactInfo => _contactInfoJson,
    };

    await Future.delayed(const Duration(milliseconds: 500));
    return jsonList.map((json) => TagsGroupDto.fromJson(json)).toList();
  }

  static const _rentTypeJson = [
    {
      "title": "Аренда",
      "isRadio": true,
      "tags": ["Долгосрочная", "Посуточно", "Обмен"],
    },
    {
      "title": "Кому готов сдавать",
      "isRadio": false,
      "tags": ["Одному человеку", "Компании", "Семье", "Студентам"],
    },
  ];

  static const _roomTypeJson = [
    {
      "title": "Долгосрочная аренда",
      "description": "Какое у вас помещение?",
      "isRadio": true,
      "tags": ["Жилое", "Коммерческое"],
    },
  ];

  static const _propertyTypeJson = [
    {
      "title": "Вид недвижимости",
      "isRadio": true,
      "tags": ["Квартира", "Апартаменты", "Комната", "Койко-место", "Дом", "Коттедж", "Таунхаус"],
    },
  ];

  static const _propertiesApartmentJson = [
    {
      "title": "Количество комнат",
      "isRadio": true,
      "tags": ["Студия", "1", "2", "3", "4", "5", "6+", "Свободная планировка"],
    },
    {
      "title": "Планировка",
      "isRadio": true,
      "tags": ["Смежная", "Изолированная", "Смежно-изолированная"],
    },
  ];

  static const _featuresFirstJson = [
    {
      "title": "Ремонт",
      "isRadio": true,
      "tags": ["Без ремонта", "Евро", "Косметический"],
    },
    {
      "title": "Лифты",
      "isRadio": true,
      "tags": ["Пассажирский", "Грузовой", "Пассажирский и грузовой"],
    },
    {
      "title": "Балконы",
      "isRadio": true,
      "tags": ["Балкон", "Нет", "Лоджия", "Балкон и лоджия", "Терраса"],
    },
  ];

  static const _featuresSecondJson = [
    {
      "title": "Мебель",
      "isRadio": true,
      "tags": ["Есть", "Нет", "Частично"],
    },
    {
      "title": "Удобства",
      "isRadio": false,
      "tags": ["Интернет", "Мусоропровод", "Посуда", "Видеодомофон", "Консьерж", "Умный дом"],
    },
    {
      "title": "Ванная комната",
      "isRadio": true,
      "tags": ["Душевая кабина", "Ванна"],
    },
    {
      "title": "Бытовая техника",
      "isRadio": false,
      "tags": ["Холодильник", "Телевизор", "Стиральная машина", "Кондиционер", "Посудомоечная машина"],
    },
    {
      "title": "Плита",
      "isRadio": true,
      "tags": ["Газ", "Электрическая"],
    },
  ];

  static const _dealTermsJson = [
    {
      "title": "Цена",
      "isRadio": true,
      "tags": ["Рубли", "Евро", "Доллары"],
    },
    {
      "title": "Предоплата",
      "isRadio": true,
      "tags": ["Без предоплаты", "Месяц", "2", "3", "4+"],
    },
    {
      "title": "Срок аренды",
      "isRadio": true,
      "tags": ["Несколько месяцев", "От года"],
    },
    {
      "title": "Условия сдачи",
      "isRadio": false,
      "tags": ["Можно с детьми", "Можно с животными"],
    },
  ];

  static const _contactInfoJson = [
    {
      "title": "Способ связи",
      "isRadio": true,
      "tags": ["Телефон", "Соцсети", "Электронная почта", "Все"],
    },
  ];
}
