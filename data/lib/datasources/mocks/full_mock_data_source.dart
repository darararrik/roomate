import '../mocks/apartaments_mock_datasource.dart';
import '../mocks/profile_mock_data_source.dart';

abstract class FullMockDataSource
    with ProfileMockDataSource, ApartamentsMockDataSource {}
