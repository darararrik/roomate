import 'package:roomate/data/datasources/apartaments_data_source.dart';
import 'package:roomate/data/mappers/apartament_mapper.dart';
import 'package:roomate/domain/models/ad_form/ad_form_options_model.dart';
import 'package:roomate/domain/models/apartaments/apartament_model.dart';
import 'package:roomate/domain/models/apartaments/apartament_filter.dart';
import 'package:roomate/domain/models/filter/filter_model.dart';
import 'package:roomate/domain/repository/apartaments_repository.dart';

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
  Future<AdFormOptionsModel> fetchAdFormOptions() => _dataSource.fetchAdFormOptions();
}
