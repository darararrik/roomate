import 'package:roomate/data/datasources/remote/mocks/create_ad_mock_data_source.dart';
import 'package:roomate/data/datasources/remote/mocks/profile_mock_data_source.dart';

abstract class FullMockDataSource with CreateAdMock, ProfileMockDataSource {}
