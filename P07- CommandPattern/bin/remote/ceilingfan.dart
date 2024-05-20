class CeilingFan {
  static const int h = 3;
  static const int m = 2;
  static const int l = 1;
  static const int o = 0;
  final String location;
  int speed;

  CeilingFan({required this.location}) : speed = o;

  void high() {
    speed = h;
    print("$location ceiling fan is on high");
  }

  void medium() {
    speed = m;
    print("$location ceiling fan is on medium");
  }

  void low() {
    speed = l;
    print("$location ceiling fan is on low");
  }

  void off() {
    speed = o;
    print("$location ceiling fan is off");
  }

  int getSpeed() => speed;
}
