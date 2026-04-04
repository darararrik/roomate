// part of 'preference.dart';

// final class _CustomPreference<Value> extends Preference<Value> {
//   _CustomPreference({
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
//   Value? get value => shP.getString(key)?.decode(decoder);

//   @override
//   Future<Value?> setValue(final Value? value) async {
//     if (value == null) {
//       clear();
//     } else {
//       await shP.setString(key, encoder(value));
//     }

//     return super.setValue(value);
//   }
// }
