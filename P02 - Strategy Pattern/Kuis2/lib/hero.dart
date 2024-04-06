import 'package:kuis2/weapon.dart';

abstract class Hero {
  final int healthPoint;
  final Weapon weapon;

  const Hero({required this.healthPoint, required this.weapon});

  void basicAttack() {
    print("Attack: 5 points");
  }

  void useWeapon() {
    print("Attack with $weapon : ${weapon.attackPoint} points");
  }

  void skill();
}
