class Hottub {
  bool on = false;
  int temperature = 90;
  Hottub();

  void turnOn() {
    on = true;
  }

  void turnOff() {
    on = false;
  }

  void circulate() {
    print("Hottub is bubbling!");
  }

  void jetsOn() {
    print("Hottub jets are on");
  }

  void jetsOff() {
    print("Hottub jets are off");
  }

  void setTemperature(int temperature) {
    if (temperature > this.temperature) {
      print("Hottub is heating to a steaming $temperature degrees");
    } else {
      print("Hottub is cooling to $temperature degrees");
    }
    this.temperature = temperature;
  }
}
