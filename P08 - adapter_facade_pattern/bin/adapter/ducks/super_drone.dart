import 'drone.dart';

class SuperDrone implements Drone {
  @override
  void beep() {
    print('Beep Beep Beep');
  }

  @override
  void spinRotors() {
    print('MEMUTARRRR');
  }

  @override
  void takeOff() {
    print('Take off');
  }
}
