import 'package:kuis2/hero.dart';
import 'package:kuis2/wood_staff.dart';

class Mage extends Hero {
  Mage() : super(healthPoint: 50, weapon: WoodStaff());

  @override
  void basicAttack() {
    print("Attack : 25 Points");
  }

  @override
  void skill() {
    print('Bola Api !!');
  }
}
