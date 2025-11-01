import 'dart:async';

abstract class Storage<Value> {
  Value? get value;

  FutureOr<Value?> setValue(final Value? value);

  void clear();

  Stream<Value?> get stream;
}
