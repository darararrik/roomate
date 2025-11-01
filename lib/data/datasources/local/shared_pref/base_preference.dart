part of 'preference.dart';

typedef _BasePreferenceDecoder<Result> = Result Function({required SharedPreferences shP, required String key});
typedef _BasePreferenceEncoder<Result> = Future<void> Function(
    {required Result value, required SharedPreferences shP, required String key});

final class _BasePreference<Value> extends Preference<Value> {
  _BasePreference({
    required this.shP,
    required this.key,
  })  : decoder = _InitDecoder.init<Value>(),
        encoder = _InitEncoder.init<Value>(),
        super._();

  @override
  final SharedPreferences shP;
  @override
  final String key;

  @override
  final _BasePreferenceDecoder<Value?> decoder;
  @override
  final _BasePreferenceEncoder<Value> encoder;

  @override
  Value? get value => decoder(
        shP: shP,
        key: key,
      );

  @override
  Future<Value?> setValue(final Value? value) async {
    if (value == null) {
      clear();
    } else {
      await encoder(
        value: value,
        shP: shP,
        key: key,
      );
    }

    return super.setValue(value);
  }
}

extension _InitDecoder<T> on _BasePreferenceDecoder<T> {
  static _BasePreferenceDecoder<T?> init<T>() {
    final func = switch (T) {
      const (String) => getStr,
      const (int) => getInt,
      const (double) => getDouble,
      const (bool) => getBool,
      const (DateTime) => getDate,
      _ => null,
    };

    if (func == null) throw UnimplementedError();

    return func.casts();
  }

  static String? getStr({required SharedPreferences shP, required String key}) => shP.getString(key);
  static int? getInt({required SharedPreferences shP, required String key}) => shP.getInt(key);
  static double? getDouble({required SharedPreferences shP, required String key}) => shP.getDouble(key);
  static bool? getBool({required SharedPreferences shP, required String key}) => shP.getBool(key);
  static DateTime? getDate({required SharedPreferences shP, required String key}) {
    final String? v = shP.getString(key);
    return v != null ? DateTime.parse(v) : null;
  }
}

extension _InitEncoder<T> on _BasePreferenceEncoder<T> {
  static _BasePreferenceEncoder<T> init<T>() {
    final func = switch (T) {
      const (String) => setStr,
      const (int) => setInt,
      const (double) => setDouble,
      const (bool) => setBool,
      const (DateTime) => setDate,
      _ => null,
    };

    if (func == null) throw UnimplementedError();

    return func.casts();
  }

  static Future<void> setStr({required SharedPreferences shP, required String key, required String value}) =>
      shP.setString(key, value);
  static Future<void> setInt({required SharedPreferences shP, required String key, required int value}) =>
      shP.setInt(key, value);
  static Future<void> setDouble({required SharedPreferences shP, required String key, required double value}) =>
      shP.setDouble(key, value);
  static Future<void> setBool({required SharedPreferences shP, required String key, required bool value}) =>
      shP.setBool(key, value);
  static Future<void> setDate({required SharedPreferences shP, required String key, required DateTime value}) =>
      shP.setString(key, value.toIso8601String());
}
