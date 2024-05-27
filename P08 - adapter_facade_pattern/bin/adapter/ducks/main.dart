import 'drone.dart';
import 'drone_adapter.dart';
import 'ducks.dart';
import 'mallard_duck.dart';
import 'super_drone.dart';
import 'turkey.dart';
import 'turkey_adapter.dart';
import 'wild_turkey.dart';

main() {
  Duck duck = MallardDuck();
  Turkey turkey = WildTurkey();
  Drone drone = SuperDrone();

  Duck droneAdapter = DroneAdapter(drone: drone);
  Duck turkeyAdapter = TurkeyAdapter(turkey: turkey);

  print('TURKEYY');
  turkey.gobble();
  turkey.fly();

  print('\nBEBEK');
  testDuck(duck);

  print('\nTURKEY ADAPTER');
  testDuck(turkeyAdapter);

  print('\nDRONnnnE');
  testDuck(droneAdapter);
}

void testDuck(Duck duck) {
  duck.quack();
  duck.fly();
}
