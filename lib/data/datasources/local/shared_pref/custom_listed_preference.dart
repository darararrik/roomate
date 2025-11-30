// part of 'preference.dart';

// final class _CustomListedPreference<Value> extends Preference<List<Value>> {
//   _CustomListedPreference({
//     required this.shP,
//     required this.key,
//     required this.decoder,
//     required this.encoder,
//   }) : super._();

//   @override
//   final SharedPreferences shP;
//   @override
//   final String key;

//   @override
//   final DataTransformer<Value, String> decoder;
//   @override
//   final DataTransformer<String, Value> encoder;

//   @override
//   List<Value>? get value => shP.getStringList(key)?.map((e) => e.decode(decoder)).toList();

//   @override
//   Future<List<Value>?> setValue(final List<Value>? value) async {
//     if (value == null) {
//       clear();
//     } else {
//       final encodedList = value.map((e) => encoder(e)).toList();
//       await shP.setStringList(key, encodedList);
//     }

//     return super.setValue(value);
//   }
// }
