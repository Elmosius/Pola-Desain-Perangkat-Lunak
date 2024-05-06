import '../pizza/cheese_pizza.dart';
import '../pizza/pepperoni_pizza.dart';
import '../pizza/pizza.dart';

class PizzaFactory {
  Pizza create(String type) {
    Pizza pizza;

    if (type == 'cheese') {
      pizza = CheesePizza();
    } else {
      pizza = PepperoniPizza();
    }

    return pizza;
  }
}
