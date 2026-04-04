import 'package:roomate/data/datasources/remote/mocks/apartaments_mock_datasource.dart';
import 'package:roomate/data/datasources/remote/mocks/profile_mock_data_source.dart';

abstract class FullMockDataSource with ProfileMockDataSource, ApartamentsMockDataSource {}
