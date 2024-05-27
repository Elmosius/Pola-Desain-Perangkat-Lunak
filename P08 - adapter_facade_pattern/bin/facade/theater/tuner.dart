import 'amplifier.dart';

class Tuner {
  final String description;
  final Amplifier amplifier;
  double? frequency;

  Tuner({required this.description, required this.amplifier});

  void turnOn() {
    print('$description on');
  }

  void turnOff() {
    print('$description off');
  }

  void setFrequency(double frequency) {
    print('$description setting the frequency to $frequency');
    this.frequency = frequency;
  }

  void setAm() {
    print('$description setting AM mode');
  }

  void setFm() {
    print('$description setting FM mode');
  }

  String toSring() {
    return description;
  }
}
