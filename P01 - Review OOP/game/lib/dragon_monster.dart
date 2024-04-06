import 'package:dart_application_1/monster.dart';
import 'package:dart_application_1/fire_monster.dart';

class DragonMonster extends Monster implements FireMonster {
  DragonMonster(super.healthPoint);

  @override
  void attack() {
    print('Dragon attacked you!');
  }

  @override
  void fireBreath() {
    print('Dragon breath fire!');
  }

  void fly() {
    print('Dragon fly!');
  }
}
