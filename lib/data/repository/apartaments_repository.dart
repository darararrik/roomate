import 'package:roomate/data/datasources/remote/mocks/apartaments_mock_datasource.dart';
import 'package:roomate/domain/models/apartaments/apartament_model.dart';
import 'package:roomate/domain/repository/apartaments_repository.dart';

class ApartamentsRepository implements IApartamentsRepository {
  ApartamentsRepository({required ApartamentsMockDataSource mockDataSource})
    : _mockDataSource = mockDataSource;

  final ApartamentsMockDataSource _mockDataSource;

  @override
  List<ApartamentModel> getApartaments() {
    return _mockDataSource.fetchApartaments();
  }
}
