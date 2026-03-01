import 'package:roomate/data/dto/tags_group_dto/tags_group_dto.dart';
import 'package:roomate/domain/enums/selection_step_key_enum.dart';

mixin CreateAdMock {
  Future<List<TagsGroupDto>> getSelectionCategories(
    SelectionStepKey key,
  ) async {
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
      "tags": ["Долгосрочная", "Посуточно", "Обмен"],
    },
    {
      "title": "Кому готов сдавать",
      "tags": ["Одному человеку", "Компании", "Семье", "Студентам"],
    },
  ];

  static const _roomTypeJson = [
    {
      "title": "Долгосрочная аренда",
      "description": "Какое у вас помещение?",
      "tags": ["Жилое", "Коммерческое"],
    },
  ];

  static const _propertyTypeJson = [
    {
      "title": "Вид недвижимости",
      "tags": [
        "Квартира",
        "Апартаменты",
        "Комната",
        "Койко-место",
        "Дом",
        "Коттедж",
        "Таунхаус",
      ],
    },
  ];

  static const _propertiesApartmentJson = [
    {
      "title": "Количество комнат",
      "tags": ["Студия", "1", "2", "3", "4", "5", "6+", "Свободная планировка"],
    },
    {
      "title": "Планировка",
      "tags": ["Смежная", "Изолированная", "Смежно-изолированная"],
    },
  ];

  static const _featuresFirstJson = [
    {
      "title": "Ремонт",
      "tags": ["Без ремонта", "Евро", "Косметический"],
    },
    {
      "title": "Лифты",
      "tags": ["Пассажирский", "Грузовой", "Отсутствует"],
    },
    {
      "title": "Балконы",
      "tags": ["Балкон", "Нет", "Лоджия", "Балкон и лоджия", "Терраса"],
    },
  ];

  static const _featuresSecondJson = [
    {
      "title": "Мебель",
      "tags": ["Есть", "Нет", "Частично"],
    },
    {
      "title": "Удобства",
      "tags": [
        "Интернет",
        "Мусоропровод",
        "Посуда",
        "Видеодомофон",
        "Консьерж",
        "Умный дом",
      ],
    },
    {
      "title": "Ванная комната",
      "tags": ["Душевая кабина", "Ванна"],
    },
    {
      "title": "Бытовая техника",
      "tags": [
        "Холодильник",
        "Телевизор",
        "Стиральная машина",
        "Кондиционер",
        "Посудомоечная машина",
      ],
    },
    {
      "title": "Плита",
      "tags": ["Газ", "Электрическая"],
    },
  ];

  static const _dealTermsJson = [
    {
      "title": "Цена",
      "tags": ["Рубли", "Евро", "Доллары"],
    },
    {
      "title": "Предоплата",
      "tags": ["Без предоплаты", "Месяц", "2", "3", "4+"],
    },
    {
      "title": "Срок аренды",
      "tags": ["Несколько месяцев", "От года"],
    },
    {
      "title": "Условия сдачи",
      "tags": ["Можно с детьми", "Можно с животными"],
    },
  ];

  static const _contactInfoJson = [
    {
      "title": "Способ связи",
      "tags": ["Телефон", "Соцсети", "Электронная почта", "Все"],
    },
  ];
}
