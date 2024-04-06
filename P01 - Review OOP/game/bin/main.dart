import 'package:dart_application_1/chicken_monster.dart';
import 'package:dart_application_1/dragon_monster.dart';
import 'package:dart_application_1/fire_chicken_monster.dart';
import 'package:dart_application_1/monster.dart';

void main(List<String> arguments) {
  Monster monster = DragonMonster(200);

  if (monster is ChickenMonster) {
    print("Chicken Monster's health Point: ${monster.hp}");
    monster.attack();
    monster.eatingWorm();
  } else if (monster is DragonMonster) {
    print("Dragon Monster's health Point: ${monster.hp}");
    monster.attack();
    monster.fireBreath();
    monster.fly();
  } else if (monster is FireChickenMonster) {
    print("FireChickenMonster's health point: ${monster.hp}");
    monster.attack();
    monster.eatingWorm();
    monster.fireBreath();
  }
}
