import 'package:black_smith_shop/isellable.dart';
import 'package:black_smith_shop/weapon.dart';

class BroadSword extends Weapon implements ISellable{
  @override
  double price;

  BroadSword() : price = 100, super(500);

  @override
  void attackDamage() {
    print('Attack Damage: $damage');
  }

  @override
  double getPrice() {
    return price;

  }


}