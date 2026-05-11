import 'package:domain/domain.dart';

class AppDefaultCity {
  static const int id = 5;
  static const String title = 'Москва';
  static const String fiasId = '0c5b2444-70a0-4932-980c-b4dc0d3f02b5';

  static CityModel get city => CityModel(id: id, title: title, fiasId: fiasId);
}
