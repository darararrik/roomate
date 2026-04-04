import 'dart:convert';

import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:flutter/services.dart';

class LocationCatalogMockDataSource implements LocationCatalogDataSource {
  static const _assetPath = 'shared/mocks/omsk_streets.json';

  List<StreetModel>? _cache;

  @override
  Future<List<StreetModel>> getStreetsForCity(String cityKey) async {
    if (cityKey != 'omsk') {
      return [];
    }
    _cache ??= await _loadOmsk();
    return List<StreetModel>.unmodifiable(_cache!);
  }

  Future<List<StreetModel>> _loadOmsk() async {
    final raw = await rootBundle.loadString(_assetPath);
    final map = jsonDecode(raw) as Map<String, dynamic>;
    final city = map['city'] as String? ?? 'Омск';
    final region = map['region'] as String?;
    final list = map['streets'] as List<dynamic>? ?? [];
    return list.map((e) {
      final o = e as Map<String, dynamic>;
      return StreetModel(
        id: (o['id'] as num).toInt(),
        name: o['name'] as String,
        city: city,
        district: o['district'] as String?,
        regionLine: region,
      );
    }).toList();
  }
}
