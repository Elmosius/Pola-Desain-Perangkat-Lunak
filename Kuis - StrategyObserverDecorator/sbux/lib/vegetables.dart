import 'food_decorator.dart';

class Vegetable extends FoodDecorator {
  Vegetable({required super.food})
      : super(price: food.price + 3000, name: '${food.name} with vegetables');

  @override
  String get decoratorDetails => 'Vegetables';
}
