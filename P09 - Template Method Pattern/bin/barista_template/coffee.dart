import 'caffeine_beverage.dart';

class Coffee extends CaffeineBeverage {
  @override
  void addCondiments() {
    print("Dripping coffee through filter");
  }

  @override
  void brew() {
    print("Adding sugar and milk");
  }
}
