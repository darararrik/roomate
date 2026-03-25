import 'package:roomate/domain/models/tag_model.dart';

class CreateAdStaticDataSource {
  static List<TagGroupModel> get rentType => _rentType;
  static TagGroupModel get premisesType => _premisesType;
  static TagGroupModel get propertyType => _propertyType;
  static List<TagGroupModel> get propertiesApartment => _propertiesApartment;
  static List<TagGroupModel> get featuresFirst => _featuresFirst;
  static List<TagGroupModel> get featuresSecond => _featuresSecond;
  static List<TagGroupModel> get dealTerms => _dealTerms;
  static TagGroupModel get contactInfo => _contactInfo;

  static const _rentType = [
    TagGroupModel(
      groupId: 'your_goal',
      groupTitle: 'Ваша цель',
      tags: [
        TagModel(id: 1, title: 'Съем'),
        TagModel(id: 2, title: 'Обмен'),
      ],
    ),
    TagGroupModel(
      groupId: 'term',
      groupTitle: 'Срок',
      tags: [
        TagModel(id: 3, title: 'Долгосрочная'),
        TagModel(id: 4, title: 'Посуточно'),
      ],
    ),
    TagGroupModel(
      groupId: 'who_to_rent',
      groupTitle: 'Кому готов сдавать',
      tags: [
        TagModel(id: 10, title: 'Одному человеку'),
        TagModel(id: 11, title: 'Компании'),
        TagModel(id: 12, title: 'Семье'),
        TagModel(id: 13, title: 'Студентам'),
      ],
    ),
  ];

  static const _premisesType = TagGroupModel(
    groupId: 'premises_type',
    groupTitle: 'Тип помещения',
    tags: [
      TagModel(id: 20, title: 'Жилое'),
      TagModel(id: 21, title: 'Коммерческое'),
    ],
  );

  static const _propertyType = TagGroupModel(
    groupId: 'property_type',
    groupTitle: 'Вид недвижимости',
    tags: [
      TagModel(id: 30, title: 'Квартира'),
      TagModel(id: 31, title: 'Апартаменты'),
      TagModel(id: 32, title: 'Комната'),
      TagModel(id: 33, title: 'Койко-место'),
      TagModel(id: 34, title: 'Дом'),
      TagModel(id: 35, title: 'Коттедж'),
      TagModel(id: 36, title: 'Таунхаус'),
    ],
  );

  static const _propertiesApartment = [
    TagGroupModel(
      groupId: 'room_count',
      groupTitle: 'Количество комнат',
      tags: [
        TagModel(id: 40, title: 'Студия'),
        TagModel(id: 41, title: '1'),
        TagModel(id: 42, title: '2'),
        TagModel(id: 43, title: '3'),
        TagModel(id: 44, title: '4'),
        TagModel(id: 45, title: '5'),
        TagModel(id: 46, title: '6+'),
        TagModel(id: 47, title: 'Свободная планировка'),
      ],
    ),
    TagGroupModel(
      groupId: 'layout',
      groupTitle: 'Планировка',
      tags: [
        TagModel(id: 50, title: 'Смежная'),
        TagModel(id: 51, title: 'Изолированная'),
        TagModel(id: 52, title: 'Смежно-изолированная'),
      ],
    ),
  ];

  static const _featuresFirst = [
    TagGroupModel(
      groupId: 'renovation',
      groupTitle: 'Ремонт',
      tags: [
        TagModel(id: 60, title: 'Без ремонта'),
        TagModel(id: 61, title: 'Евро'),
        TagModel(id: 62, title: 'Косметический'),
      ],
    ),
    TagGroupModel(
      groupId: 'elevators',
      groupTitle: 'Лифты',
      tags: [
        TagModel(id: 70, title: 'Пассажирский'),
        TagModel(id: 71, title: 'Грузовой'),
        TagModel(id: 72, title: 'Пассажирский и грузовой'),
      ],
    ),
    TagGroupModel(
      groupId: 'balconies',
      groupTitle: 'Балконы',
      tags: [
        TagModel(id: 80, title: 'Балкон'),
        TagModel(id: 81, title: 'Нет'),
        TagModel(id: 82, title: 'Лоджия'),
        TagModel(id: 83, title: 'Балкон и лоджия'),
        TagModel(id: 84, title: 'Терраса'),
      ],
    ),
  ];

  static const _featuresSecond = [
    TagGroupModel(
      groupId: 'furniture',
      groupTitle: 'Мебель',
      tags: [
        TagModel(id: 90, title: 'Есть'),
        TagModel(id: 91, title: 'Нет'),
        TagModel(id: 92, title: 'Частично'),
      ],
    ),
    TagGroupModel(
      groupId: 'amenities',
      groupTitle: 'Удобства',
      tags: [
        TagModel(id: 100, title: 'Интернет'),
        TagModel(id: 101, title: 'Мусоропровод'),
        TagModel(id: 102, title: 'Посуда'),
        TagModel(id: 103, title: 'Видеодомофон'),
        TagModel(id: 104, title: 'Консьерж'),
        TagModel(id: 105, title: 'Умный дом'),
      ],
    ),
    TagGroupModel(
      groupId: 'bathroom',
      groupTitle: 'Ванная комната',
      tags: [
        TagModel(id: 110, title: 'Душевая кабина'),
        TagModel(id: 111, title: 'Ванна'),
      ],
    ),
    TagGroupModel(
      groupId: 'appliances',
      groupTitle: 'Бытовая техника',
      tags: [
        TagModel(id: 120, title: 'Холодильник'),
        TagModel(id: 121, title: 'Телевизор'),
        TagModel(id: 122, title: 'Стиральная машина'),
        TagModel(id: 123, title: 'Кондиционер'),
        TagModel(id: 124, title: 'Посудомоечная машина'),
      ],
    ),
    TagGroupModel(
      groupId: 'stove',
      groupTitle: 'Плита',
      tags: [
        TagModel(id: 130, title: 'Газ'),
        TagModel(id: 131, title: 'Электрическая'),
      ],
    ),
  ];

  static const _dealTerms = [
    TagGroupModel(
      groupId: 'currency',
      groupTitle: 'Цена',
      tags: [
        TagModel(id: 140, title: 'Рубли'),
        TagModel(id: 141, title: 'Евро'),
        TagModel(id: 142, title: 'Доллары'),
      ],
    ),
    TagGroupModel(
      groupId: 'prepayment',
      groupTitle: 'Предоплата',
      tags: [
        TagModel(id: 150, title: 'Без предоплаты'),
        TagModel(id: 151, title: 'Месяц'),
        TagModel(id: 152, title: '2'),
        TagModel(id: 153, title: '3'),
        TagModel(id: 154, title: '4+'),
      ],
    ),
    TagGroupModel(
      groupId: 'rental_period',
      groupTitle: 'Срок аренды',
      tags: [
        TagModel(id: 160, title: 'Несколько месяцев'),
        TagModel(id: 161, title: 'От года'),
      ],
    ),
    TagGroupModel(
      groupId: 'rental_conditions',
      groupTitle: 'Условия сдачи',
      tags: [
        TagModel(id: 170, title: 'Можно с детьми'),
        TagModel(id: 171, title: 'Можно с животными'),
      ],
    ),
  ];

  static const _contactInfo = TagGroupModel(
    groupId: 'contact_method',
    groupTitle: 'Способ связи',
    tags: [
      TagModel(id: 180, title: 'Оба способа'),
      TagModel(id: 181, title: 'Звонки'),
      TagModel(id: 182, title: 'Сообщения'),
    ],
  );
}
