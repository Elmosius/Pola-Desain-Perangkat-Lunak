class TV {
  final String location;
  int? channel;

  TV({required this.location});

  void turnOn() {
    print('$location TV is on');
  }

  void turnOff() {
    print('$location TV is off');
  }

  void setChannel() {
    channel = 3;
    print('$location TV channel is set for DVD');
  }
}
