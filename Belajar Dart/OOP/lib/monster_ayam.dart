import 'package:input_output/drink_ability_mixin.dart';
import 'package:input_output/flyable.dart';
import 'package:input_output/monster.dart';

class MonsterAyam extends Monster 
    implements Flyable{

  @override
  void eatHuman(){
    print("TOK TOK TOKK TOK ");
  }

  @override
  void move() {
    // TODO: implement move
  }
  
  @override
  void fly() {
    print("SUINGGG!!!");
  }
  
}