import 'decorator.dart';
import 'food.dart';

abstract class FoodDecorator extends Food implements Decorator {
  final Food food;

  FoodDecorator(
      {required super.price, required super.name, required this.food});

  @override
  String get details {
    String addOns = '* $name';
    Food food = this;

    while (food is FoodDecorator) {
      addOns += '\n  - ${food.decoratorDetails}';
      food = food.food;
    }

    return addOns;
  }
}
