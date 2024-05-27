import 'ducks.dart';
import 'turkey.dart';

class TurkeyAdapter implements Duck {
  final Turkey turkey;

  TurkeyAdapter({required this.turkey});

  @override
  void quack() {
    turkey.gobble();
  }

  @override
  void fly() {
    for (var i = 0; i < 5; i++) {
      turkey.fly();
    }
  }
}
