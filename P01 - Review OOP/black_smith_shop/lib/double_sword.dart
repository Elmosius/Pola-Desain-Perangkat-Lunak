import 'package:black_smith_shop/isellable.dart';
import 'package:black_smith_shop/weapon.dart';

class DoubleSword extends Weapon implements ISellable{
  @override
  double price;

  DoubleSword() : price = 150, super(700);

  @override
  void attackDamage() {
    print('Attack Damage: $damage');
  }

  @override
  double getPrice() {
   return price;
  }

}