import 'package:data/data.dart';
import 'package:domain/domain.dart';

class AdApplicationMapper {
  static AdApplicationSubmitModel toSubmitModel(AdApplicationSubmitData dto) {
    return AdApplicationSubmitModel(
      id: dto.id,
      adId: dto.adId,
      status: dto.status,
      createdAt: dto.createdAt,
    );
  }
}
