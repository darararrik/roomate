import 'dart:convert';

import 'types.dart';

extension StringUtil on String {
  R decode<R>(DataTransformer<R, String> decoder) => decoder(this);

  dynamic toJson() => jsonDecode(this);
}

extension JsonUtils on Json {
  String toStr() => jsonEncode(this);
}
