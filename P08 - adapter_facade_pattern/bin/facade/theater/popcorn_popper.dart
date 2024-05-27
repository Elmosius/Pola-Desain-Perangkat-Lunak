class PopcornPopper {
  final String description;

  PopcornPopper({required this.description});

  void turnOn() {
    print('$description on');
  }

  void turnOff() {
    print('$description off');
  }

  void pop() {
    print('$description popping popcorn!');
  }

  @override
  String toString() {
    return description;
  }
}
