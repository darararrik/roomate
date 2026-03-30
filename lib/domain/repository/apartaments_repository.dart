import 'package:roomate/domain/models/apartaments/apartament_model.dart';

abstract class IApartamentsRepository {
  List<ApartamentModel> getApartaments();
}
