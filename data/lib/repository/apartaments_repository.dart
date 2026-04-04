import 'package:data/data.dart';
import 'package:domain/domain.dart';

class ApartamentsRepositoryImpl implements IApartamentsRepository {
  ApartamentsRepositoryImpl(this._dataSource);
  final ApartamentsDataSource _dataSource;

  @override
  Future<List<ApartamentModel>> fetchApartaments(
    ApartamentFilter filter,
  ) async {
    final dtos = await _dataSource.fetchApartaments(filter);
    return dtos.map((dto) => ApartamentMapper.toModel(dto)).toList();
  }

  @override
  Future<FilterModel> fetchFilters() => _dataSource.fetchFilterTags();

  @override
  Future<AdFormOptionsModel> fetchAdFormOptions() =>
      _dataSource.fetchAdFormOptions();
}
