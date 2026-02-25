import 'package:roomate/data/datasources/remote/remote.dart';
import 'package:roomate/data/dto/ad_field_dto.dart';
import 'package:roomate/domain/enums/selection_step_key_enum.dart';
import 'package:roomate/domain/models/selection_category.dart';
import 'package:roomate/domain/repositories/ad_repository.dart';

class AdRepository implements IAdRepository {
  AdRepository(this._dataSource);
  final RemoteDataSource _dataSource;

  @override
  Future<List<AdFieldConfig>> getFields(SelectionStepKey key) async {
    final rawData = await _dataSource.getStepFields(key);

    return rawData.map((e) => e.toDomain()).toList();
  }
}
