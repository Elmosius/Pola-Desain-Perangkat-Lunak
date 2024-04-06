import 'package:kuis2/broad_sword.dart';
import 'package:kuis2/hero.dart';

class Warrior extends Hero {
  Warrior() : super(healthPoint: 50, weapon: BroadSword());
  
  @override
  void basicAttack() {
    print("Attack : 5 points");
  }

  @override
  void skill() {
    print("Membloklir serangan ");
  }
}
