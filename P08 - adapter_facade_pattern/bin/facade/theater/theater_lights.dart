class TheaterLights {
  final String description;

  TheaterLights({required this.description});

  void turnOn() {
    print('$description on');
  }

  void turnOff() {
    print('$description off');
  }

  void dim(int level) {
    print('$description dimming to $level%');
  }

  @override
  String toString() {
    return description;
  }
}
