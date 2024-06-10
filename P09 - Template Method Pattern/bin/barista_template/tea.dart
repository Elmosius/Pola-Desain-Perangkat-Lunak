import 'caffeine_beverage.dart';

class Tea extends CaffeineBeverage {
  @override
  void addCondiments() {
    print("Adding lemon");
  }

  @override
  void brew() {
    print("Adding Lemon");
  }
}
