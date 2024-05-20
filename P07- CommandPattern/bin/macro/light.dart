class Light {
  final String location;
  int? level;

  Light({required this.location});

  void turnOn() {
    level = 100;
    print('$location light is on');
  }

  void turnOff() {
    level = 0;
    print('$location light is off');
  }

  void dim(int level) {
    this.level = level;
    level == 0 ? turnOff() : print("Light is dimmed to $level %");
  }

  int getLevel() {
    return level!;
  }
}
