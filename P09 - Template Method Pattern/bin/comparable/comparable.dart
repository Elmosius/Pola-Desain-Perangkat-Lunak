mixin Comparable {
  int get value;
  bool isGreaterThan(Comparable other) {
    return value > other.value;
  }
}
