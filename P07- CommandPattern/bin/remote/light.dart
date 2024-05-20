class Light {
  final String location;

  Light({required this.location});

  void turnOn() {
    print('$location light is on');
  }

  void turnOff() {
    print('$location light is off');
  }
}
