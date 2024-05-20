class Stereo {
  final String location;

  Stereo({required this.location});

  void turnOn() {
    print("$location streo is on");
  }

  void turnOff() {
    print("$location streo is off");
  }

  void setCD() {
    print("$location streo is set for CD input");
  }

  void setDVD() {
    print("$location streo is set for DVD input");
  }

  void setRadio() {
    print("$location streo is for Radio");
  }

  void setVolume(int volume) {
    print("$location streo is set for $volume");
  }
}
