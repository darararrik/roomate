extension ListContext<T> on List<T> {
  List<T> copy() => List.of(this);
  // ignore: unused_element
  Future<List<T>> withDelay([int milliseconds = 1200]) async {
    await Future.delayed(Duration(milliseconds: milliseconds));
    return this;
  }
}

extension _ObjectWithDelay<T extends Object> on T {
  // ignore: unused_element
  Future<T> withDelay([int milliseconds = 700]) async {
    await Future.delayed(Duration(milliseconds: milliseconds));
    return this;
  }
}
