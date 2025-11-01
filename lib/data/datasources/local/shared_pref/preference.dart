import 'dart:async';

import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:roomate/data/datasources/local/storage.dart';
import 'package:roomate/data/utils/utils.dart';

part 'base_preference.dart';
part 'custom_preference.dart';
part 'custom_listed_preference.dart';

abstract base class Preference<Value> implements Storage<Value> {
  Preference._();

  factory Preference.base({
    required SharedPreferences preferences,
    required String key,
  }) => _BasePreference<Value>(shP: preferences, key: key);

  factory Preference.custom({
    required SharedPreferences preferences,
    required String key,
    required DataTransformer<Value, String> decoder,
    required DataTransformer<String, Value> encoder,
  }) => _CustomPreference<Value>(
    shP: preferences,
    key: key,
    decoder: decoder,
    encoder: encoder,
  );

  static Preference<List<Value>> listedCustom<Value>({
    required SharedPreferences preferences,
    required String key,
    required DataTransformer<Value, String> decoder,
    required DataTransformer<String, Value> encoder,
  }) => _CustomListedPreference<Value>(
    shP: preferences,
    key: key,
    decoder: decoder,
    encoder: encoder,
  );

  late final StreamController<Value?> _prefStream = BehaviorSubject.seeded(
    value,
  );

  abstract final SharedPreferences shP;

  abstract final String key;
  abstract final Function decoder;
  abstract final Function encoder;

  @override
  Value? get value;

  @override
  @mustCallSuper
  Future<Value?> setValue(final Value? value) async {
    _prefStream.add(value);

    return value;
  }

  @override
  void clear() => shP.remove(key);

  @override
  Stream<Value?> get stream => _prefStream.stream;
}
