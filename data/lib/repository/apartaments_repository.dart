import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/exception/remote_exception.dart';

import 'package:data/data.dart';

class ApartamentsRepositoryImpl implements IApartamentsRepository {
  ApartamentsRepositoryImpl(this._dataSource);
  final ApartamentsDataSource _dataSource;

  @override
  Future<List<ApartamentModel>> fetchApartaments(ApartamentFilter filter) async {
    final dtos = await _dataSource.fetchApartaments(filter);
    return dtos.map((dto) => ApartamentMapper.toModel(dto)).toList();
  }

  @override
  Future<FilterModel> fetchFilters() => _dataSource.fetchFilterTags();

  @override
  Future<Either<RemoteException, AdFormOptionsModel>> fetchAdFormOptions() =>
      _dataSource.fetchAdFormOptions();

  @override
  Future<void> createAd(CreateAdFormModel request) {
    final dto = CreateAdFormMapper.toDto(request);
    return _dataSource.createAd(dto);
  }
}
