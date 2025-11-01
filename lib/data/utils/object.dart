extension ObjectUtils on Object? {
  T casts<T>() => this as T;
  T? safeCasts<T>() {
    final Object? item = this;
    if (item is T) {
      return item;
    }

    return null;
  }
}
