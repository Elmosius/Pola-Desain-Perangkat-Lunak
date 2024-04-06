import 'package:dart_application_1/chicken_monster.dart';
import 'package:dart_application_1/fire_monster.dart';

class FireChickenMonster extends ChickenMonster implements FireMonster {
  @override
  void fireBreath() {
    print('The fire chicken monster is breathing fire!');
  }
}
