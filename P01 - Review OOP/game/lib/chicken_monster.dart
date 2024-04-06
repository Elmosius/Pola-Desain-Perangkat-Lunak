import 'package:dart_application_1/monster.dart';

class ChickenMonster extends Monster {
  ChickenMonster() : super(50);

  @override
  void attack() {
    print('Chicken pecked you!');
  }

  void eatingWorm() {
    print('Chicken eating worm!');
  }
}
