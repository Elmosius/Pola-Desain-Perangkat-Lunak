// inheritence untuk menurunkan field, method kepada anak-anaknya
// abstract => template
// interface => skill / kemampuan 
// mixin => plugin

import 'package:input_output/drink_ability_mixin.dart';
import 'package:input_output/flyable.dart';
import 'package:input_output/monster.dart';
import 'package:input_output/monster_ayam.dart';
import 'package:input_output/monster_ikan.dart';

main() {
  Monster a = MonsterAyam();
  MonsterIkan i = MonsterIkan();

  List<Monster> monster = [];

  monster.add(MonsterAyam());
  monster.add(MonsterIkan());
  monster.add(MonsterAyam());

  (a as MonsterAyam).eatHuman();
  i.swim();

  for (Monster a in monster) {
    if (a is Flyable) {
      ((a as DrinkAbilityMixin).drink());
    }
  }
}
