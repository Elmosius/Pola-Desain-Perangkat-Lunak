import 'ducks.dart';

class MallardDuck implements Duck {
  @override
  void fly() {
    print('AKU TERBANG');
  }

  @override
  void quack() {
    print('WEKK WEKK');
  }
}
