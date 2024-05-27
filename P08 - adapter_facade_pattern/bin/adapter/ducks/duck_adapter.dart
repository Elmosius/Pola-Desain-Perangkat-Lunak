import 'dart:math';
import 'ducks.dart';
import 'turkey.dart';

class DuckAdapter implements Turkey {
  final Duck duck;
  final Random rand;

  DuckAdapter({required this.duck}) : rand = Random();

  @override
  void fly() {
    if (rand.nextInt(5) == 0) {
      duck.fly();
    }
  }

  @override
  void gobble() {
    duck.quack();
  }
}
