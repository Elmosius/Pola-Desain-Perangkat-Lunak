import 'package:sbux/food_decorator.dart';

class Cheese extends FoodDecorator {
  final int amount;

  Cheese({required super.food, this.amount = 1})
      : super(
          price: food.price + 1000 * amount,
          name: 'Cheese ${food.name}',
        );

  @override
  String get decoratorDetails => 'Cheese x$amount slice(s)';
}
