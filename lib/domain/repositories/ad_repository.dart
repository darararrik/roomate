import 'package:roomate/domain/enums/selection_step_key_enum.dart';
import 'package:roomate/domain/models/selection_category.dart';

abstract interface class IAdRepository {
  Future<List<AdFieldConfig>> getFields(SelectionStepKey key);
}
