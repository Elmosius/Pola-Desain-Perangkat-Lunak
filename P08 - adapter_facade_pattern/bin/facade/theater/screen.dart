class Screen {
  final String description;

  Screen({required this.description});

  void up() {
    print('$description going up');
  }

  void down() {
    print('$description going down');
  }

  @override
  String toString() {
    return description;
  }
}
