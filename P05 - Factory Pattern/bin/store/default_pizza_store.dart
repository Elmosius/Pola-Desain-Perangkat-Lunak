import '../pizza/cheese_pizza.dart';
import '../pizza/pepperoni_pizza.dart';
import '../pizza/pizza.dart';
import 'pizza_store.dart';

enum DefaultPizzaType { cheese, pepperoni }

class DefaultPizzaStore extends PizzaStore<DefaultPizzaType> {
  @override
  Pizza create(DefaultPizzaType type) {
    Pizza pizza;
    if (type == DefaultPizzaType.cheese) {
      pizza = CheesePizza();
    } else {
      pizza = PepperoniPizza();
    }

    return pizza;
  }
}
