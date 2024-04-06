import 'package:black_smith_shop/weapon.dart';

class WoodenSword extends Weapon{
  WoodenSword() : super(30);
  
  @override
  void attackDamage() {
    print('Attack Damage: $damage');
  }
}