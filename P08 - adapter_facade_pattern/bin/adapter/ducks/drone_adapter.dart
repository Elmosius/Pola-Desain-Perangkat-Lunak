import 'drone.dart';
import 'ducks.dart';

class DroneAdapter implements Duck {
  final Drone drone;

  DroneAdapter({required this.drone});

  @override
  void fly() {
    drone.spinRotors();
    drone.takeOff();
  }

  @override
  void quack() {
    drone.beep();
  }
}
